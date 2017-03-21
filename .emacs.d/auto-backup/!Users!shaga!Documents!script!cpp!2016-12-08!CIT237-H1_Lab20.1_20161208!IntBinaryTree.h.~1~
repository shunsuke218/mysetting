// Specification file for the IntBinaryTree class
// (Adapted from the IntBinaryTree class in Chapter 20 
//  of the Gaddis textbook.)
// Portions copyright 2012, Pearson Education, Inc.
//
#ifndef INTBINARYTREE_H
#define INTBINARYTREE_H
#include <iostream>
#include <iomanip>
#include <fstream>
#include <string>
using namespace std;

class IntBinaryTree
{
private:
   struct TreeNode
   {
      int value;                   // The value in the node
      TreeNode *left;              // Pointer to left child node
      TreeNode *right;             // Pointer to right child node
   };

   static bool verboseMode;

   TreeNode *root;       // Pointer to the root node
   string inputFileName;
   fstream inputFile;

   // Private member functions
   
   void insert(TreeNode *&nodePtr, TreeNode *&newNode);
   void destroySubTree(TreeNode *&);
   void deleteNode(int, TreeNode *&);
   void makeDeletion(TreeNode *&);
   void displayInOrder(TreeNode *) const;
   void displayPreOrder(TreeNode *) const;
   void displayPostOrder(TreeNode *) const;
   void displayNode(TreeNode *) const;
   int calculateNumberOfNodes(TreeNode *nodePtr) const;   
   int calculateSubTreeHeight(TreeNode *nodePtr) const;   
   void enhancedTreeDisplay(TreeNode *, int) const;


public:
   // Constructor
   IntBinaryTree()
   { 
	   root = NULL; 
   }
      
   // Destructor
   ~IntBinaryTree()
      { destroySubTree(root); }
      
   // Binary tree operations
   TreeNode *getRoot()
   {   return root;   }
   void setRoot(TreeNode *newRoot)
   {   root = newRoot;   }
   void insertNode(int);
   bool searchNode(int);
   void remove(int);
   void userInsertNode();
   void userSearchNode();
   void userRemoveNode();
   void userRemoveAllNodes();
   
   void displayInOrder() const
   {  displayInOrder(root); }
      
   void displayPreOrder() const
   {  displayPreOrder(root); }
      
   void displayPostOrder() const
   {  displayPostOrder(root); }

   void enhancedTreeDisplay() const;
   
   void displayNumberOfNodes() const;

   void displayTreeHeight() const;

   static void setVerboseMode(bool param)
   {
	   verboseMode = param;
   }
   static bool getVerboseMode()
   {   return verboseMode; }

   string getInputFileName()
   {    return inputFileName;    }
   bool openInputFile();
   void closeInputFile();
   bool readDataLine(string &recordText);
   int readFile();
};
#endif