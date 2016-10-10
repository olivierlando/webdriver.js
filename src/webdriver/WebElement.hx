package webdriver;

using tink.CoreApi;

extern class WebElement {  
  function getDriver(): WebDriver;
  function findElement(locator:Locator): WebElementPromise;

  function isElementPresent(locator: Locator): webdriver.Promise<Bool>;

  function findElements(locator: Locator): webdriver.Promise<Array<WebElement>>;
  function click(): webdriver.Promise<Noise>;
  function getTagName(): webdriver.Promise<String>;

  function sendKeys(keys:haxe.extern.Rest<String>): webdriver.Promise<Noise>;
  function getCssValue(cssStyleProperty: String): webdriver.Promise<String>;
  function getAttribute(attributeName: String): webdriver.Promise<String>;

  function getText(): webdriver.Promise<String>;
  function getSize(): webdriver.Promise<{ w:Float, h: Float }>;
  function getLocation(): webdriver.Promise<{ x:Float, y: Float}>;
  function isEnabled(): webdriver.Promise<Bool>;
  function isSelected(): webdriver.Promise<Bool>;

  function submit(): webdriver.Promise<Noise>;
  function clear(): webdriver.Promise<Noise>;

  function isDisplayed(): webdriver.Promise<Bool>;
  function getOuterHtml(): webdriver.Promise<String>;

  function getInnerHtml(): webdriver.Promise<String>;
  
  static function equals(a: WebElement, b: WebElement): webdriver.Promise<Bool>;

}
