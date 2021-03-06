<%@ include file="/WEB-INF/jsp/fragments/includes.jsp" %>
<script type="text/javascript" src="static/js/artist/artist.js"></script>
<html>
    <head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script type="text/javascript">
    jQuery(document).ready(function() {
        entityid = $('#entityid').val();
        url = 'comment/recent/type/artist/entity/' + entityid + '/page/1';
        $('.recent_comments_content').load(url, function() {
            //$('#deleteCommentForm').attr("action", url + $('#deleteCommentForm').attr("action").toString());
            $('#commentsURL').val(url);
        });
        //        $('img.singer_photo').imgscale({
        //            parent : '.singer_photo_link',
        //            fade : 1000
        //        });
    });
</script>
<body>
<input type="hidden" id="entityid" value="${artist.artistid}" />
<input type="hidden" id="artistName" value="${artist.name}" />

<div id="artist_left_part" class="left_content_features">
    <div class="ie_shadow_box">
        <div id="artist_left_photo_box" class="left_box_features ui-corner-all box_shadow">

            <a class="singer_brief_header"  href="artist/${artist.name}">
                ${artist.name}
            </a>
            <div id="artist_photo" >
                <img src="static/images/artist/poster/artist_poster_5.png" id="artist_profile_poster" class="artist_profile_poster_features"/>
                <img src="${artist.pictureSmall}" id="artist_profile_photo" class=""/>
                <!--<a id="view_link" href="#">View More...</a>-->
            </div>
            <div id="artist_buttons">
                <p><a id="play_radio_link" href="radio/create?artistName=${artist.name}" class="brief_buttons ie_blue_default_buttons blue_default_buttons ui-corner-all">

                        <img class="blue_button_icon" alt="" src="static/images/icons/blue_buttons/add_icon_new.png"/>
                        Play Artist Radio</a></p>
                <!--
        <p><a id="loveArtist" href="artist/${artist.name}#" class="brief_buttons blue_default_buttons ui-corner-all">
                <img class="blue_button_icon" alt="" src="static/images/icons/blue_buttons/love_button_new.png"/>
                Love Artist </a></p>
                -->
                <div id="share_stackmenu">
                    <a id="share_artist_link" href="#" class="brief_buttons ie_blue_default_buttons blue_default_buttons ui-corner-all">
                        <img class="blue_button_icon" alt="" src="static/images/icons/blue_buttons/connected_icon_new.png"/>
                        Share Artist </a>
                </div>
            </div>
            <div class="artis_singer_brief_statistics">
                <ul class="artist_singer_brief_statistics_list">
                    <li> <span class="artist_brief_statistics_item"> 32 </span> Plays </li>
                    <li> <span class="artist_brief_statistics_item"> 21 </span> Listeners </li>
                    <li> <span class="artist_brief_statistics_item"> 4 </span> Albums </li>
                    <li> <span class="artist_brief_statistics_item"> 3 </span> Comments </li>

                </ul>
            </div>
        </div>
    </div>
    <div class="ie_shadow_box">
        <div id="top_listeners" class="left_listener_box left_box_features ui-corner-all box_shadow">
            <a href="#"> <div id=top_listeners_header" class="artist_box_header listenersMore"> Top Listeners </div></a>

            <ul class="common_friend_list">
                <c:forEach var="artistFan" items="${artistFans}">
                    <li class="common_friend_list_item"> <a  class="common_friend_photo_link" href="#">
                            <img src="static/images/song/profile_outline.png" class="profile_general_photo_outline">
                            <img class="common_profile_photo"src="static/images/user/small/1/brokensword.bmp" /></a>
                        <br/><a class="common_profile_nickname" href="user/${artistFan.userid.userName}">${artistFan.userid.userName}</a>
                        <br/><span class="common_profile_location" >${artistFan.userid.locationCity.city}, ${artistFan.userid.locationCity.countryCode.country}</span>
                    </li>
                </c:forEach>
            </ul>
            <p class="see_more"> <a class="listenersMore" href="#">See more<img class="see_more_icon" alt="" src="static/images/icons/forward_icon.png"></a></p>
        </div>
    </div>
    <!--
<div class="ie_shadow_box">
<div  class="more_information left_box_features ui-corner-all box_shadow">
<a href="#">   <div id="more_information_header" class="artist_box_header moreInfoMore"> More Information </div></a>
<div id="more_information_content">
    ${moreInfo}
</div>
<p class=" see_more"> <a class="moreInfoMore" href="#">See more<img class="see_more_icon" alt="" src="static/images/icons/forward_icon.png"></a></p>

</div>
</div>
    -->
</div>
<div id="artist_right_part" class="right_content_features">
    <div class="ie_shadow_box">
        <div id="artist_store_box" class="right_box_features ui-corner-all box_shadow">
            <a href="#"><div id="artist_store_box_header" class="artist_box_header"> Store </div> </a>
        </div>
    </div>
    <!-- <div id="top_stations" class="right_box_features ui-corner-all box_shadow">
         <a href="#"><div id="top_stations_header" class="artist_box_header"> Top Stations </div> </a>
         <ul id="top_stations_list">
             <li> <span class="radio_nickname"><a class="top_station_name" href="#">Alternative Songs.fm</a>,&nbsp;&nbsp;&nbsp;
                     <a href="#"><img src="static/images/user/small/1/brokensword.bmp" align="middle" height="30px" width="30px"/></a>
                     <a class="top_stations_nickname" href="#">brokensword</a> </br></span>
                 <span class="top_station_singers"><a href="#">Placebo</a>, <a href="#">Metallica</a>, <a href="#">Linkinpark</a>...</span>
             </li>
             <li> <span class="radio_nickname"><a class="top_station_name" href="#">Alternative Songs.fm</a>,&nbsp;&nbsp;&nbsp;
                     <a href="#"> <img src="static/images/user/small/1/brokensword.bmp" align="middle" height="30px" width="30px"/></a>
                     <a class="top_stations_nickname" href="#">brokensword</a> </br></span>
                 <span class="top_station_singers"><a href="#">Placebo</a>, <a href="#">Metallica</a> <a href="#">Linkinpark</a>...</span>
             </li>
             <li> <span class="radio_nickname"><a class="top_station_name" href="#">Alternative Songs.fm</a>,&nbsp;&nbsp;&nbsp; <a href="#"><img src="static/images/user/small/1/brokensword.bmp" align="middle" height="30px" width="30px"/></a> <a class="top_stations_nickname" href="#">brokensword</a> </br></span>
                 <span class="top_station_singers"><a href="#">Placebo</a>, <a href="#">Metallica</a>, <a href="#">Linkinpark</a>...</span>
             </li>
             <li> <span class="radio_nickname"><a class="top_station_name" href="#">Alternative Songs.fm</a>,&nbsp;&nbsp;&nbsp; <a href="#"><img src="static/images/user/small/1/brokensword.bmp" align="middle" height="30px" width="30px"/></a> <a class="top_stations_nickname" href="#">brokensword</a> </br></span>
                 <span class=padding:15px 15px 35px;"top_station_singers"><a href="#">Placebo</a>, <a href="#">Metallica</a>, <a href="#">Linkinpark</a>...</span>
             </li>
             <li> <span class="radio_nickname"><a class="top_station_name" href="#">Alternative Songs.fm</a>,&nbsp;&nbsp;&nbsp; <a href="#"><img src="static/images/user/small/1/brokensword.bmp" align="middle" height="30px" width="30px"/></a> <a class="top_stations_nickname" href="#">brokensword</a> </br></span>
                 <span class="top_station_singers"><a href="#">Placebo</a>, <a href="#">Metallica</a>, <a href="#">Linkinpark</a>...</span>
             </li>
         </ul>
         <p class="see_more_right_box see_more"> <a href="#">See more<img class="see_more_icon" alt="" src="static/images/icons/blue_buttons/play_icon_new.png"></a></p>
     </div> -->
    <div class="ie_shadow_box">
        <div class="recent_activity right_box_features ui-corner-all box_shadow">
            <a href="#">  <div id=recent_activity_header" class="artist_box_header activityMore"> Recent Activity </div></a>
            <div class="recent_activity_content">
                <ul class="recent_activity_list">
                    <c:forEach var="activity" items="${activities}">
                        <li>
                            <a class="activity_symbol  ui-state-error-text ui-icon ui-icon-check" href="#"></a>
                            ${activity.activity}
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <p class="see_more_right_box see_more"> <a class="activityMore" href="#">See more<img class="see_more_icon" alt="" src="static/images/icons/forward_icon.png"></a></p>
        </div>
    </div>

</div>
<div id="artist_center_part" class=" center_content_features box_shadow">
    <div class="ie_center_shadow_box">
        <div id="artist_brief" class="center_box_features">
            <div  id="center_biography_link" class="center_artist_box_header "><a class="center_artist_box_link biographyMore" href="#">Biography</a></div>


            <div id="artist_info" >
                ${biography}
            </div>



            <p class="see_more"> <a class="biographyMore" href="#">Read more<img class="see_more_icon" alt="" src="static/images/icons/forward_icon.png" ></a></p>
        </div>

        <div id="similar_artists" class="center_box_features " >
            <div  class="center_artist_box_header "><a class="center_artist_box_link similiarArtistsMore" href="#">Similar Artists</a></div>

            <div id="similar_artists_content">
                <c:forEach var="similiar" items="${similiars}">
                    <c:choose>
                        <c:when test="${similiar.artistid.artistid == artist.artistid}">
                            <c:set var="similiarArtist" value="${similiar.similiarArtistid}" />
                        </c:when>
                        <c:otherwise>
                            <c:set var="similiarArtist" value="${similiar.artistid}" />
                        </c:otherwise>
                    </c:choose>
                    <div id="1_singer" class="singer_features">


                        <span class="ie_artist_overlay_shadow">
                            <a class="singer_photo_link" href="artist/${similiarArtist.name}">
                                <img class="song_overlay_shadow singer_photo" src="${similiarArtist.pictureSmall}"/>
                                <img src="static/images/overlays/person_overlay.png" class="similar_artist_list_photo_overlay"/>
                            </a>
                        </span>

                        <div class="singer_name"> <a href="artist/${similiarArtist.name}"> ${similiarArtist.name}</a></div>
                    </div>
                </c:forEach>
            </div>

            <p class="see_more"> <a class="similiarArtistsMore" href="#">See more<img class="see_more_icon" alt="" src="static/images/icons/forward_icon.png"></a></p>
        </div>

        <div  class="albums_features center_box_features " >
            <div  class="center_artist_box_header "><a class="center_artist_box_link albumsMore" href="#">Top Albums</a></div>

            <ul class="artist_top_album_list_new">
                <c:forEach var="album" items="${albums}">
                    <li class="artist_top_album_list_item_new">
                        <a class="album_front_link" title="${album.albumName}" href="album/${album.albumName}">
                            <span class="ie_album_overlay_shadow">
                                <img class="artist_top_album_photo song_overlay_shadow " src="${album.albumAmazonAsin.coverarturl}"/>
                                <img class="artist_top_album_photo_overlay  " src="static/images/overlays/album_overlay.png"/>
                            </span>
                        </a>
                        <span class="artist_top_album_name"><a href="album/${album.albumName}" class="artist_top_album_name_link"> ${album.albumName} </a></span>
<!--                        <a  href="#" class="artist_top_album_button brief_buttons blue_default_buttons ui-corner-all">
                            <img class="blue_button_icon" alt="" src="static/images/icons/blue_buttons/buy_icon_new.png"/>
                            Buy Album </a>-->
                    </li>
                </c:forEach>
            </ul>


            <p class="see_more"> <a class="albumsMore" href="#">See more<img class="see_more_icon" alt="" src="static/images/icons/forward_icon.png"></a></p>

        </div>

        <div id="top_songs" class="center_box_features " >
            <div  class="center_artist_box_header "><a class="center_artist_box_link songsMore" href="#">Top Songs</a></div>


            <div class="artist_songs_sub_header">
                <span class="artist_song_list_listeners_link"> Listeners </span>
                <span class="artist_song_list_album"> Album </span>
            </div>
            <ul class="artist_top_song_list">
                <c:set var="gridNo" value="1" />
                <c:forEach var="song" items="${songs}">
                    <li id="song_grid_${gridNo}" class="artist_song_list_item artist_song_list_grid_${gridNo%2}" >
                        <a href="album/${song.songid.albumid.albumName}"><img src="${song.songid.albumid.albumAmazonAsin.coverarturl}" class="artist_songs_photo"/></a>
                        <span href="#" class="artist_song_list_name">
                            ${song.songid.songName}
                        </span>
                        <span class="artist_general_songs_box_buttons">
                            <a href="#" class="user_songs_heart">
                                <img title="Play/Add to queue" class=" user_song_box_buttons_image box_icons user_songs_play_image"  src="static/images/buttons/user_profile_buttons/play_button_blue.png">
                            </a>
                            <a href="#" class="user_songs_heart">
                                <img class=" user_song_box_buttons_image box_icons user_songs_share_image" title="Share this song"  src="static/images/buttons/user_profile_buttons/mail.png">
                            </a>
                            <a href="#" class="user_songs_heart">
                                <img class="user_song_box_buttons_image box_icons user_songs_buy_image" title="Buy this song"  src="static/images/buttons/user_profile_buttons/shopping_cart.png">
                            </a>
                        </span>
                        <span class="artist_song_list_listened"> ${song.listenCount}</span>
                        <a href="album/${song.songid.albumid.albumName}">
                            <span class="artist_song_list_album_name">${song.songid.albumid.albumName}</span>
                        </a>
                    </li>
                    <c:set var="gridNo" value="${gridNo + 1}" />
                </c:forEach>
            </ul>
            <div id="song_box_result_box" class="ui-state-highlight ui-corner-all" style="padding: 0pt 0.7em; margin-top: 20px;">
                <p><span class="ui-icon" style="float: left; margin-right: 0.3em;"></span>
                    <span id="song_box_result_message"></span>
            </div>

            <p class="see_more"> <a class="songsMore" href="#">See more<img class="see_more_icon" alt="" src="static/images/icons/forward_icon.png"></a></p>
        </div>
        <div  class="recent_comments center_box_features" >
            <div class="center_artist_box_header "><a href="#" class="center_artist_box_link commentsMore">Recent Comments</a></div>
            <div class="recent_comments_content">

            </div>
            <p class="see_more"> <a class="commentsMore" href="#">See more<img class="see_more_icon" alt="" src="static/images/icons/forward_icon.png"></a></p>
        </div>
    </div>
</div>

</body>
</html>
