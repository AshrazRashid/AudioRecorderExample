/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React, { Component } from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  Text,
  StatusBar,
  TouchableOpacity,
} from 'react-native';

import { Colors } from 'react-native/Libraries/NewAppScreen';

import AudioRecorderPlayer from 'react-native-audio-recorder-player';
const audioRecorderPlayer = new AudioRecorderPlayer();

interface AppState {
  recordSecs: string | number;
  recordTime: string;
  currentPositionSec: string | number;
  playTime: string;
  duration: string;
}

class App extends Component<{}, AppState> {
  state: AppState = {
    recordSecs: '',
    recordTime: '',
    currentPositionSec: '',
    playTime: '',
    duration: '',
  };

  render() {
    const { recordSecs, recordTime, currentPositionSec, playTime, duration } =
      this.state;
    return (
      <>
        <StatusBar barStyle="dark-content" />
        <SafeAreaView>
          <ScrollView
            contentInsetAdjustmentBehavior="automatic"
            style={styles.scrollView}
          >
            <TouchableOpacity onPress={() => this.onStartRecord()}>
              <Text>onStartRecord</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => this.onStopRecord()}>
              <Text>onStopRecord</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => this.onStartPlay()}>
              <Text>onStartPlay</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => this.onPausePlay()}>
              <Text>onPausePlay</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => this.onStopPlay()}>
              <Text>onStopPlay</Text>
            </TouchableOpacity>

            <Text>recordSecs</Text>
            <Text>{recordSecs}</Text>

            <Text>recordTime</Text>
            <Text>{recordTime}</Text>

            <Text>currentPositionSec</Text>
            <Text>{currentPositionSec}</Text>

            <Text>playTime</Text>
            <Text>{playTime}</Text>

            <Text>duration</Text>
            <Text>{duration}</Text>
          </ScrollView>
        </SafeAreaView>
      </>
    );
  }

  onStartRecord = async () => {
    const result = await audioRecorderPlayer.startRecorder();
    audioRecorderPlayer.addRecordBackListener((e: any) => {
      console.log('e', e);
      this.setState({
        recordSecs: e.current_position,
        recordTime: audioRecorderPlayer.mmssss(Math.floor(e.current_position)),
      });
      return;
    });
    console.log(result);
  };

  onStopRecord = async () => {
    const result = await audioRecorderPlayer.stopRecorder();
    audioRecorderPlayer.removeRecordBackListener();
    this.setState({
      recordSecs: 0,
    });
    console.log(result);
  };

  onStartPlay = async () => {
    console.log('onStartPlay');
    const msg = await audioRecorderPlayer.startPlayer(
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
    );
    console.log(msg);
    audioRecorderPlayer.addPlayBackListener((e: any) => {
      if (e.current_position === e.duration) {
        console.log('finished');
        audioRecorderPlayer.stopPlayer();
      }

      console.log('e', e);
      this.setState({
        currentPositionSec: e.current_position,
        playTime: audioRecorderPlayer.mmssss(Math.floor(e.current_position)),
        duration: audioRecorderPlayer.mmssss(Math.floor(e.duration)),
      });
      return;
    });
  };

  onPausePlay = async () => {
    await audioRecorderPlayer.pausePlayer();
  };

  onStopPlay = async () => {
    console.log('onStopPlay');
    audioRecorderPlayer.stopPlayer();
    audioRecorderPlayer.removePlayBackListener();
  };
}

const styles = StyleSheet.create({
  scrollView: {
    backgroundColor: Colors.lighter,
  },
  engine: {
    position: 'absolute',
    right: 0,
  },
  body: {
    backgroundColor: Colors.white,
  },
  sectionContainer: {
    marginTop: 32,
    paddingHorizontal: 24,
  },
  sectionTitle: {
    fontSize: 24,
    fontWeight: '600',
    color: Colors.black,
  },
  sectionDescription: {
    marginTop: 8,
    fontSize: 18,
    fontWeight: '400',
    color: Colors.dark,
  },
  highlight: {
    fontWeight: '700',
  },
  footer: {
    color: Colors.dark,
    fontSize: 12,
    fontWeight: '600',
    padding: 4,
    paddingRight: 12,
    textAlign: 'right',
  },
});

export default App;
