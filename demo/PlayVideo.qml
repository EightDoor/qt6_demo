import QtQuick
import QtMultimedia
import QtQuick.Controls

Item {
    id: root
    MediaPlayer {
        id: player
        source: "https://apk.start6.cn/1.mp4"
        audioOutput: audioOutput
        videoOutput: videoOutput
    }

    VideoOutput {
        id: videoOutput
        anchors.fill: parent
        anchors.margins: 20
        width: videoOutput.sourceRect.width
        height: videoOutput.sourceRect.height
        anchors.horizontalCenter: parent.horizontalCenter
    }

    AudioOutput {
        id: audioOutput
        volume: volumeSlider.value
    }

    Slider {
        id: volumeSlider
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.margins: 20
        orientation: Qt.Vertical
        value: 0.5
    }

    Item {
        height: 50
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: player.playbackState == MediaPlayer.PlayingState ? "Pause" :"Play"
            onClicked: {
                switch(player.playbackState) {
                      case MediaPlayer.PlayingState:
                          player.pause()
                          break
                      case MediaPlayer.PausedState:
                          player.play()
                          break
                      case MediaPlayer.StoppedState:
                          player.play()
                          break
                }
            }
        }
        Slider {
            id: progressSlider
            width: parent.width
            anchors.bottom: parent.width
            enabled: player.seekable
            value: player.duration > 0 ?player.position / player.duration : 0
            background: Rectangle {
                implicitHeight: 8
                color: "white"
                Rectangle {
                    width: progressSlider.visualPosition * parent.width
                    height: parent.height
                    color: "#1D8BF8"
                    radius: 3
                }
            }
            handle: Item {}
            onMoved: {
                player.position = player.duration * progressSlider.position
            }
        }
    }

    Component.onCompleted: {
        player.play()
    }
}
