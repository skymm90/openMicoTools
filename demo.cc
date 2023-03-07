#include "webview.h"

/***
 * 
 *  g++ demo.cc -std=c++11 -Ilibs/webview $(pkg-config --cflags --libs gtk+-3.0 webkit2gtk-4.0) -o myClient
 * 
 */
 

#ifdef _WIN32
int WINAPI WinMain(HINSTANCE hInt, HINSTANCE hPrevInst, LPSTR lpCmdLine,
                   int nCmdShow) {
#else
int main() {
#endif
  webview::webview w(false, nullptr);
  w.set_title("my client");
  w.set_size(480, 320, WEBVIEW_HINT_NONE);
  //w.set_html("Thanks for using webview!");
  w.navigate("https://www.baidu.com");
  w.run();
  return 0;
}
