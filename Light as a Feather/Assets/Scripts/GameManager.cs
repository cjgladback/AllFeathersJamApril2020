using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public static GameManager ins;
    public Node startingNode;

    [HideInInspector]
    public Node currentNode;
    
    public CameraRig rig;

    //look up singleton in future to improve this bad one
    private void Awake()
    {
        ins = this;
    }

    private void Start()
    {
        startingNode.Arrive();
    }

    private void Update()
    {
        //back up from prop
        if (Input.GetMouseButtonDown(1) && currentNode.GetComponent<Prop>() != null)
        {
            currentNode.GetComponent<Prop>().loc.Arrive();
        } //back up from location
        else if (Input.GetMouseButtonDown(1) && currentNode.GetComponent<Location>() != null)
        {
            currentNode.GetComponent<Location>().way.Arrive();
        }
    }

}
