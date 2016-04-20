package webdriver;

using tink.CoreApi;

@:remove
extern class WindowHandle {}

@:remove
extern interface WebDriver {

  //function setFileDetector(detector: FileDetector): Void;

  //function getSession(): Promise<Session>;

  function quit(): Promise<Noise>;

  //function actions(): ActionSequence;
  function executeScript<T>(script:String): Promise<T>;
  
  function sleep(ms:Int):Promise<Noise>;
  function getPageSource(): Promise<String>;
  function close(): Promise<Noise>;
  function get(url: String): Promise<Noise>;
  function getCurrentUrl(): Promise<String>;
  function getTitle(): Promise<String>;
  function findElement(locator:Locator): WebElementPromise;
  function isElementPresent(locator:Locator): Promise<Bool>;
  function findElements(locator:Locator): Promise<Array<WebElement>>;
  function takeScreenshot(): Promise<String>;
  function switchTo(): SwitchTo;
  function getAllWindowHandles(): Promise<Array<WindowHandle>>;
  function wait(cond:Dynamic): Promise<Dynamic>;

}

@:remove
extern interface SwitchTo {
  function window( win: WindowHandle ): Promise<Noise>;
}
