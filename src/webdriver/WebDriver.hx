package webdriver;

using tink.CoreApi;

@:remove
extern class WindowHandle {}

@:remove
extern interface WebDriver {

  //function setFileDetector(detector: FileDetector): Void;

  //function getSession(): Promise<Session>;

  function quit(): webdriver.Promise<Noise>;

  //function actions(): ActionSequence;
  function executeScript<T>(script:String): webdriver.Promise<T>;
  
  function sleep(ms:Int):webdriver.Promise<Noise>;
  function getPageSource(): webdriver.Promise<String>;
  function close(): webdriver.Promise<Noise>;
  function get(url: String): webdriver.Promise<Noise>;
  function getCurrentUrl(): webdriver.Promise<String>;
  function getTitle(): webdriver.Promise<String>;
  function findElement(locator:Locator): WebElementPromise;
  function isElementPresent(locator:Locator): webdriver.Promise<Bool>;
  function findElements(locator:Locator): webdriver.Promise<Array<WebElement>>;
  function takeScreenshot(): webdriver.Promise<String>;
  function switchTo(): SwitchTo;
  function getAllWindowHandles(): webdriver.Promise<Array<WindowHandle>>;
  function wait(cond:Dynamic): webdriver.Promise<Dynamic>;
  function getSession(): webdriver.Promise<Session>;

}

@:remove
extern interface SwitchTo {
  function window( win: WindowHandle ): webdriver.Promise<Noise>;
}
