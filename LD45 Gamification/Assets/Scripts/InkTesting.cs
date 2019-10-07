using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class InkTesting : MonoBehaviour
{
    public string MainMenu;
    
    public TextAsset inkJSON;
    private Story story;

    public Text textPrefab;
    public Button buttonPrefab;

    // Start is called before the first frame update
    void Start()
    {
        story = new Story(inkJSON.text);


        refreshUI();

    }

    void refreshUI()
    {
                
            eraseUI();

            Text storyText = Instantiate(textPrefab) as Text;
            storyText.text = loadStoryChunk();
            storyText.transform.SetParent(this.transform, false);


            foreach (Choice choice in story.currentChoices)
            {
                Button choiceButton = Instantiate(buttonPrefab) as Button;
                choiceButton.transform.SetParent(this.transform, false);

                Text choiceText = choiceButton.GetComponentInChildren<Text>();
                choiceText.text = choice.text;

                choiceButton.onClick.AddListener(delegate
                {
                    chooseStoryChoice(choice);
                });
            }

        if (story.currentChoices.Count < 1)
        {
            eraseUI();

            Text endText = Instantiate(textPrefab) as Text;
            endText.text = "The End";
            endText.transform.SetParent(this.transform, false);


            Button startButton = Instantiate(buttonPrefab) as Button;
            startButton.transform.SetParent(this.transform, false);

            Text startText = startButton.GetComponentInChildren<Text>();
            startText.text = "Live it over?";

            startButton.onClick.AddListener(delegate
            {
                Start();
            });

            Button exitButton = Instantiate(buttonPrefab) as Button;
            exitButton.transform.SetParent(this.transform, false);

            Text exitText = exitButton.GetComponentInChildren<Text>();
            exitText.text = "Leave this.";

            exitButton.onClick.AddListener(delegate
            {
                SceneManager.LoadScene(MainMenu);
            });
        }
        

        //Trying desperately to fix the choice order issue. It's only effecting the text on the buttons and I don't understand!
        //Thanks to distantcam, it was proven to not require count nonsense to fix. Probably. I'll just note it out for now.
        /*
        for (int i = 0; i < story.currentChoices.Count; i++)
        {
            Choice choice = story.currentChoices[i];
            Button choiceButton = Instantiate(buttonPrefab) as Button;
            choiceButton.transform.SetParent(this.transform, false);

            Text choiceText = choiceButton.GetComponentInChildren<Text>();
            choiceText.text = choice.text;

            choiceButton.onClick.AddListener(delegate {
                chooseStoryChoice(choice);
            });

            Debug.Log(i);
        }
        */
        
    }

    void eraseUI()
    {
        for (int i = 0; i < this.transform.childCount; i++)
        {
            Destroy(this.transform.GetChild(i).gameObject);
        }
    }

    void chooseStoryChoice(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
        refreshUI();
    }

    // Update is called once per frame
    void Update()
    {

    }

    string loadStoryChunk()
    {
        string text = "";

        if (story.canContinue)
        {
            text = story.ContinueMaximally();
        }

        return text;
    }
}
