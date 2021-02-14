// FILM.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>
#include <iomanip>
#include <string>
#include "FILM.h"
using namespace std;

int main()
{	// Declaration and initialization
	int		n,m,i,years;	
	double  average;

	cout << "Write a number for how many festivals you want to enter values, and press enter: " << endl;
	cin >> n;

	int** film =	new int*[n];
	int*  fil  =	new int [n];
	int*  year =	new int [n];
	string* naziv = new string[n];
	
	// Write for festivals
	for (i = 0; i < n; i++)
	{
		cout << "Write the name of the festival you will input values for: " << endl;
		cin >> naziv[i];
		cout << "Write a number for how many festival years you will enter for that specific festival called " << naziv[i]<< ": " << endl;
		cin >> m;
		film[i] = new int[m];
		fil [i]	= m;		
	}
	
	// Write for festival year and number of movies
	for (int i = 0; i < n; i++)
	{					
		for (int j = 0; j < fil[i]; j++)
		{
			cout << "Enter a year for festival " << naziv[i] << ": " << endl;
			cin >> years;
			year[j] = years;
			cout << "Enter the number of movies that were shown on it: " << endl;
			cin >> *(*(film + i) + j);
		}			
	}

	// Print for year and average movies per year
	cout << "FILM = ";
	for (i = 0; i < n; i++) {
		
		int sum = 0;
		cout << naziv[i] << ": ";
		for (int j = 0; j < fil[i]; j++)
		{	
			cout << "<" << year[j] << "," << *(*(film + i) + j) << ">,";
			sum += *(*(film + i) + j);
		}
		average = (double)sum / fil[i];
		cout <<"Avg: "<< average << ";" << endl;
	}
	// Delete array memory
	delete[] film;
	delete[] fil;
	delete[] year;
	return 0;
}
