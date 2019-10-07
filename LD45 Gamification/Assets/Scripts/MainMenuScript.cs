using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class MainMenuScript : MonoBehaviour
{
    public Button buttonPrefab;

    // Start is called before the first frame update
    void Start()
    {
        NewGame();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void NewGame()
    {
        Button exitButton = Instantiate(buttonPrefab) as Button;
        exitButton.transform.SetParent(this.transform, false);

        Text exitText = exitButton.GetComponentInChildren<Text>();
        exitText.text = "Open the window.";

        exitButton.onClick.AddListener(delegate
        {
            SceneManager.LoadScene("SampleScene");
        });
    }
}
