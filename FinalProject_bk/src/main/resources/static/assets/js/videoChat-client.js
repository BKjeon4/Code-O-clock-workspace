
// import { io } from "socket.io-client"
const socket = io.connect('https://192.168.0.57:3000',{  
    withCredentials: true,
    cors: { origin: '*' }
})

// 소캣 io
/*
const socket = io.connect("https://192.168.0.57:3000/socket.io/socket.io.js",{
        cors: { origin: '*' }
      });
*/

// 피어 아이디 설정
const peer = new Peer();

// 비디오 객체 변수 준비
let localStream;
let remoteStream;

// 피어 연결 객체
let conn;

// 영상 크기 & 소리 조절
let constraints = {
    video:{
        width:{min:640, ideal:1920, max:1920},
        height:{min:480, ideal:1080, max:1080},
    },
    audio:true
}

// 화상 기능 모음
let init = async () => {
	
	localStream = await navigator.mediaDevices.getUserMedia(constraints)
    document.getElementById('user-1').srcObject = localStream
	
	peerJoin();
    
    leavePeer();
    
}

// 피어 참여/연결
let peerJoin = async () => {
	
	peer.on('open', id => {
		socket.emit('join-room', id);
	});

	socket.on('user-connected', userId => {
		connectToNewUser(userId, stream);
	});
	
}

// 피어 연결하는 함수
let connectToNewUser = async (userId, stream) => {
	
	// userId 피어가 연결했을 때 비디오 객체를
	conn = peer.connect(userId, {
		stream: stream
	});
	
	// 왼쪽 상단에 내 영상을, 메인 화면에 상대의 영상을 배치
	conn.on('stream', remoteStream => {
		document.getElementById('user-2').srcObject = remoteStream
		document.getElementById('user-2').style.display = 'block'

    	document.getElementById('user-1').classList.add('smallFrame')

    	if(!localStream){
        	localStream = navigator.mediaDevices.getUserMedia({video:true, audio:false})
        	document.getElementById('user-1').srcObject = localStream
    	}
    	
	});
}

// 피어가 떠났을 때 실행되는 함수
let leavePeer = async () => {
	
	// 사용자가 떠날 시 소캣 연결 끊어짐
	socket.on('user-disconnected', userId => {
		if (conn) { conn.close(); }
	});
	
}

// 카메라를 키고 끄는 기능
let toggleCamera = async () => {
    let videoTrack = localStream.getTracks().find(track => track.kind === 'video')

    if(videoTrack.enabled){
        videoTrack.enabled = false
        document.getElementById('camera-btn').style.backgroundColor = 'rgb(255, 80, 80)'
    }else{
        videoTrack.enabled = true
        document.getElementById('camera-btn').style.backgroundColor = 'rgb(179, 102, 249, .9)'
    }
}

// 마이크를 키고 끄는 기능
let toggleMic = async () => {
    let audioTrack = localStream.getTracks().find(track => track.kind === 'audio')

    if(audioTrack.enabled){
        audioTrack.enabled = false
        document.getElementById('mic-btn').style.backgroundColor = 'rgb(255, 80, 80)'
    }else{
        audioTrack.enabled = true
        document.getElementById('mic-btn').style.backgroundColor = 'rgb(179, 102, 249, .9)'
    }
}

// 카메라와 마이크 기능을 버튼에 부여
document.getElementById('camera-btn').addEventListener('click', toggleCamera)
document.getElementById('mic-btn').addEventListener('click', toggleMic)

init();

