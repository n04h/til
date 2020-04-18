# Twitch API Get channel info by ChannelID

## [GET] Endpoint

```txt
https://api.twitch.tv/kraken/channels/<CHANNEL_ID>
```

## Param

```txt
```

## Header

```txt
Accept: application/vnd.twitchtv.v5+json
Client-ID: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
Authorization: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

## Response

```json
{
    "mature": false,
    "status": "test",
    "broadcaster_language": "ja",
    "broadcaster_software": "unknown_rtmp",
    "display_name": "n004h",
    "game": "Rocket League",
    "language": "ja",
    "_id": "56808214",
    "name": "n004h",
    "created_at": "2014-02-15T05:36:29Z",
    "updated_at": "2019-03-03T13:55:07Z",
    "partner": false,
    "logo": "https://static-cdn.jtvnw.net/jtv_user_pictures/fe23c997-5fc7-4982-b8e1-51200da757b6-profile_image-300x300.jpeg",
    "video_banner": null,
    "profile_banner": "https://static-cdn.jtvnw.net/jtv_user_pictures/n004h-profile_banner-c552e95fa3ca26d6-480.jpeg",
    "profile_banner_background_color": null,
    "url": "https://www.twitch.tv/n004h",
    "views": 145,
    "followers": 9,
    "broadcaster_type": "",
    "description": "",
    "private_video": false,
    "privacy_options_enabled": false
}
```