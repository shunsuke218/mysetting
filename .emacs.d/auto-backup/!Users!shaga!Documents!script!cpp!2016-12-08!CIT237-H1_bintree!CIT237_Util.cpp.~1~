// Implementation file for the CIT237_Util Library Module
#include <iostream>
#include <iomanip>
#include <fstream>
#include <cstdlib>
#include <cmath>
#include <ctime>
#include <string>
#include "CIT237_Util.h"
using namespace std;


/*=============================================================================
 *	Function:	inputIntegerWithDefault  -	 input string value
 *						
 *  Inputs:   requests input from the user
 *            (calling function specifies default value)
 *
 *  Outputs:
 *      returns string value input by user.
 *
 *  Desciption:
 *      Input a line of text and convert it to an integer.
 *

 *
 *---------------------------------------------------------------------------*/
int inputIntegerWithDefault(string promptText, int defaultValue)
{
	string inputValue;
	int returnVal = 0;
	
		// input from user 
		cout << promptText << " (default = " << defaultValue << "): ";
		getline(cin, inputValue);

		if(inputValue == "")
		{
			returnVal = defaultValue;
		}
		else
		{
			returnVal = convertStringToInteger(inputValue);
		}

	return returnVal;
} // (end function 'inputIntegerWithDefault')

/*=============================================================================
 *	Function:	inputStringWithDefault  -	 input string value
 *						
 *  Inputs:   requests input from the user
 *            (calling function specifies default value)
 *
 *  Outputs:
 *      returns string value input by user.
 *
 *  Desciption:
 *      Input a line of text and convert it to an integer.
 *

 *
 *---------------------------------------------------------------------------*/
string inputStringWithDefault(string promptText, string defaultValue)
{
	string inputValue;
	string returnVal = "";
	
		// input from user 
		cout << promptText << " (default = " << defaultValue << "): ";
		getline(cin, inputValue);

		if(inputValue == "")
		{
			returnVal = defaultValue;
		}
		else
		{
			returnVal = inputValue;
		}

	return returnVal;
} // (end function 'inputStringWithDefault')

/*=============================================================================
 *	Function:	inputNonEmptyString  -	 input non-empty string
 *						
 *  Inputs:   requests input from the user
 *
 *  Outputs:
 *      returns integer value input by user.
 *
 *  Desciption:
 *      Input a line of text and check that it is not empty.
 *
 *---------------------------------------------------------------------------*/
string inputNonEmptyString(string promptText)
{
	string inputString;
	int convertedInteger = 0;
	int outputVal = 0;
	bool inputIsOK = false;

	do 
	{
		// input from user 
		cout << promptText;
		getline(cin, inputString);

		if(inputString == "" || inputString == " " )
		{
			inputIsOK = false; 
		}
		else
		{
			inputIsOK = true; 
		}
	} while (inputIsOK == false);

	return inputString;
} // (end function 'inputNonEmptyString')

/*=============================================================================
 *	Function:	inputInteger  -	 input integer value
 *						
 *  Inputs:   requests input from the user
 *
 *  Outputs:
 *      returns integer value input by user.
 *
 *  Desciption:
 *      Input a line of text and convert it to an integer.
 *
 *  PLEASE NOTE:  there are more "pure" C++ ways to do this, 
 *                but for now, this is fine.
 *
 *---------------------------------------------------------------------------*/
int inputInteger(string promptText)
{
	string inputString;
	int convertedInteger = 0;
	int outputVal = 0;
	bool inputIsOK = false;

	do 
	{
		// input from user 
		cout << promptText;
		getline(cin, inputString);

		if(inputString == "0" || inputString == "-0" 
			|| inputString == "00"|| inputString == "-00" )
		{
			outputVal = 0;
			inputIsOK = true; 
		}
		else
		{
			convertedInteger=atoi(inputString.c_str());
			if(convertedInteger == 0)
			{
				cout << "CIT237_Util::inputInteger(" << __LINE__ << "):  "
					 << "invalid inputString \"" << inputString << "\"" << endl
					 << "Please enter an integer value. " << endl ;
			}
			else
			{
				outputVal = convertedInteger;
				inputIsOK = true; 
			}
		}
	} while (inputIsOK == false);

	return outputVal;
} // (end function 'inputInteger')


/*=============================================================================
 *	Function:	inputDouble  -	 input double value
 *						
 *  Inputs:   requests input from the user
 *
 *  Outputs:
 *      returns double value input by user.
 *
 *  Desciption:
 *      Input a line of text and convert it to an double.
 *
 *  PLEASE NOTE:  there are more "pure" C++ ways to do this, 
 *                but for now, this is fine.
 *
 *---------------------------------------------------------------------------*/
double inputDouble(string promptText)
{
	string inputString;
	double convertedValue = 0;
	double outputVal = 0.0;
	bool inputIsOK = false;

	do 
	{
//		cout << "Entering CIT237_Util::inputDouble()" << endl;

		cout << promptText;   	// Get input value from user
		getline(cin, inputString);

		if(inputString == "0"|| inputString == "-0"  
			|| inputString == "0.0" || inputString == "-0.0" )
		{
			outputVal = 0.0;
			inputIsOK = true; 
		}
		else
		{
			convertedValue=atof(inputString.c_str());
			if(convertedValue == 0.0)
			{
				cout << "CIT237_Util::inputDouble(" << __LINE__ << "):  "
					 << "invalid inputString \"" << inputString << "\"" << endl
					 << "Please enter a floating-point value. " << endl ;
			}
			else
			{
				outputVal = convertedValue;
				inputIsOK = true; 
			}
		}
	} while (inputIsOK == false);

// cout << "Leaving CIT237_Util::inputDouble(), return value = " << outputVal << endl;
	return outputVal;
} // (end function 'inputDouble')


/*=============================================================================
 *	Function:	convertStringToDouble  -	 Convert string to double
 *						
 *  Inputs:   string to be converted
 *
 *  Outputs:
 *      returns double value 
 *
 *  Desciption:
 *      Convert input parameter to a double.
 *
 *---------------------------------------------------------------------------*/
double convertStringToDouble(string inputString)
{
	double convertedValue = 0.0;
	double outputVal = 0.0;

	if(inputString == "0"|| inputString == "-0"  
		|| inputString == "0.0" || inputString == "-0.0" )
	{
		outputVal = 0.0;
	}
	else
	{
		convertedValue=atof(inputString.c_str());
		if(convertedValue == 0.0)
		{
			cout << "CIT237_Util::convertStringToDouble(" << __LINE__ << "):  "
				<< "invalid inputString \"" << inputString << "\"." << endl;
		}
		else
		{
			outputVal = convertedValue;
		}
	}
	return outputVal;
} // (end function 'convertStringToDouble')

/*=============================================================================
 *	Function:	convertStringToInteger  -	 Convert string to double
 *						
 *  Inputs:   string to be converted
 *
 *  Outputs:
 *      returns double value 
 *
 *  Desciption:
 *      Convert input parameter to an integer.
 *
 *---------------------------------------------------------------------------*/
int convertStringToInteger(string inputString)
{
	int convertedValue = 0;
	int outputVal = 0;
	bool inputIsOK = false;

	if(inputString == "0"|| inputString == "-0"  
		|| inputString == "00" || inputString == "-00" )
	{
		outputVal = 0;
		inputIsOK = true; 
	}
	else
	{
		convertedValue=atoi(inputString.c_str());
		if(convertedValue == 0)
		{
			cout << "CIT237_Util::convertStringToInteger(" << __LINE__ << "):  "
				<< "invalid inputString \"" << inputString << "\"." << endl;
		}
		else
		{
			outputVal = convertedValue;
			inputIsOK = true; 
		}
	}

	return outputVal;
} // (end function 'convertStringToInteger')


/*=============================================================================
 *	Function:	confirmYN  -	Ask user to confirm 
 *						
 *  Inputs:   prompt string for user
 *
 *  Outputs:
 *      returns true or false.
 *
 *  Desciption:
 *      Ask the user to confirm their intention.
 *      Check response for yes or no.
 *
 *---------------------------------------------------------------------------*/
bool confirmYN(string promptText)
{
	string inputString;
	bool confirmationValue = false;
	bool inputIsOK = false;

	do 
	{
		// input from user 
		cout << promptText;
		getline(cin, inputString);

		if(inputString == "y" ||  inputString == "Y" )
		{
			confirmationValue = true; 
			inputIsOK = true;
		}
		else if (inputString == "n" || inputString == "N" )
		{
			confirmationValue = false; 
			inputIsOK = true;
		}
		else
		{
			cout << "Invalid input:  " << inputString << ".  Please input y or n." << endl;
		}
	} while (inputIsOK == false);
	return confirmationValue;

} // (end function 'confirmYN')

