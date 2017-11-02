import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.3


Window {
    visible: true

    width: 600
    height: 600

Slider {
    width: parent.width
    maximumValue: 360
    minimumValue: 0
    value: 0

    onValueChanged: {
        console.log(value)
        banana.rotation = value
    }
}


    Image {
        id: tacocat
        source: "/files/images/tacocat.jpg"

        x: 25
        y: 25
    }

    AnimatedImage {
        id: banana
        source: "/files/images/banana.gif"
        anchors.centerIn: tacocat
        opacity: 0.50
    }


    /*
    Image {
        id: smile
        source: "http://www.voidrealms.com/images/smile.jpg"
            //"https://s.ytimg.com/yts/img/yt_1200-vfl4C3T0K.png"
            //"http://vignette3.wikia.nocookie.net/ssb/images/2/2b/Lol-face.gif"

        onProgressChanged: {
            console.log("Smile Progress: " + progress)
            //Progress is equal = 0.0 to 1.0
        }
    }
    */
}
