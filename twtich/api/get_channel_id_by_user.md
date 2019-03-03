# Twitch API Get channel id by user

## [GET] Endpoint

```txt
https://api.twitch.tv/kraken/users
```

## Param

```txt
login=userid
```

## Header

```txt
Accept: application/vnd.twitchtv.v5+json
Client-ID: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

## Response

```json
{
    "_total": 1,
    "users":[
        {
            "display_name": "n004h",
            "_id": "56808214",
            "name": "n004h",
            "type": "user",
            "bio": null,
            "created_at": "2014-02-15T05:36:29.050052Z",
            "updated_at": "2019-03-03T13:55:07.451596Z",
            "logo": "https://static-cdn.jtvnw.net/jtv_user_pictures/fe23c997-5fc7-4982-b8e1-51200da757b6-profile_image-300x300.jpeg"
        }
    ]
}
```