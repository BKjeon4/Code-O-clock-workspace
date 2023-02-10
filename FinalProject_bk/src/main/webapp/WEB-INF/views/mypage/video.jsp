<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix='c'
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>video</title>
  </head>
  <body style="background-color: rgb(11, 11, 11)">
    <div
      style="
        text-align: center;
        width: 100%;
        position: fixed;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
      "
    >
      <video controls width="100%" height="100%">
        <source src="${loc}" type="video/webm" />
        <source src="${loc}" type="video/mp4" />

        Download the
        <a href="${loc}">WEBM</a>
        or
        <a href="${loc}">MP4</a>
        video.
      </video>
    </div>
  </body>
</html>
