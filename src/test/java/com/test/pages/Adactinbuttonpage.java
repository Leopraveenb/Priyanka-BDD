package com.test.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.test.baseclass.BaseClass;

public class Adactinbuttonpage extends BaseClass{
	public Adactinbuttonpage() {
		PageFactory.initElements(driver,this);
	}

	@FindBy(id = "radiobutton_0")
	private WebElement selectHotel;

	@FindBy(id = "continue")
	private WebElement continueButton;
	
	@FindBy(id = "location_span")
	private WebElement locationErrorMessage;



	public WebElement getSelectHotel() {
		return selectHotel;
	}

	public WebElement getContinueButton() {
		return continueButton;
	}
	
	public WebElement getLocationErrorMessage() {
	    return locationErrorMessage;
	}

	}


