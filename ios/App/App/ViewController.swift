import UIKit
import Capacitor

class ViewController: CAPBridgeViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // Obtenemos los márgenes seguros del iPhone (Notch y barra inferior)
        let safeArea = self.view.safeAreaInsets
        
        // Ajustamos el tamaño del WebView para que NO toque las barras
        var webViewFrame = self.view.frame
        webViewFrame.origin.y = safeArea.top
        webViewFrame.size.height = self.view.frame.height - safeArea.top - safeArea.bottom
        
        self.webView?.frame = webViewFrame
        
        // Color de fondo para las zonas vacías (StatusBar y BottomBar)
        self.view.backgroundColor = UIColor.white
    }
}
