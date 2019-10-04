.class public final Lcab/snapp/passenger/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIcon(Ljava/lang/String;)I
    .locals 6

    const v0, 0x7f0800dd

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "amenity:food_court"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "aeroway:aerodrome"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "amenity:art_centre"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "building:stadium"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "amenity:dentist"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "building:shrine"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "building:school"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "tourism:hostel"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "building:mosque"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "amenity:clinic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "amenity:cinema"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "building:church"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "building:hospital"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "amenity:collage"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x5

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "amenity:post_office"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "amenity:fast_food"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "amenity:restaurant"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "landuse:forest"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "amenity:library"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "building:hotel"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "building:university"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "amenity:parking"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "amenity:cafe"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "amenity:bank"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_18
    const-string v2, "tourism:guest_house"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x1d

    goto :goto_0

    :sswitch_19
    const-string v2, "amenity:theatre"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x11

    goto :goto_0

    :sswitch_1a
    const-string v2, "tourism:hotel"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x1b

    goto :goto_0

    :sswitch_1b
    const-string v2, "landuse:grass"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x1f

    goto :goto_0

    :sswitch_1c
    const-string v2, "amenity:embassy"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x12

    goto :goto_0

    :sswitch_1d
    const-string v2, "amenity:pharmacy"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xe

    goto :goto_0

    :sswitch_1e
    const-string v2, "shop:supermarket"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x19

    goto :goto_0

    :sswitch_1f
    const-string v2, "leisure:park"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x1e

    goto :goto_0

    :sswitch_20
    const-string v2, "shop:mall"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x1a

    :cond_1
    :goto_0
    const p0, 0x7f08012d

    const v2, 0x7f0800cd

    const v3, 0x7f080108

    const v4, 0x7f08018e

    const v5, 0x7f080109

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const p0, 0x7f080127

    :pswitch_1
    return p0

    :pswitch_2
    return v5

    :pswitch_3
    const p0, 0x7f08011a

    return p0

    :pswitch_4
    const p0, 0x7f080116

    return p0

    :pswitch_5
    return v0

    :pswitch_6
    const p0, 0x7f080160

    return p0

    :pswitch_7
    const p0, 0x7f080121

    return p0

    :pswitch_8
    const p0, 0x7f0800cc

    return p0

    :pswitch_9
    return v5

    :pswitch_a
    const p0, 0x7f08014f

    return p0

    :pswitch_b
    const p0, 0x7f0800ee

    return p0

    :pswitch_c
    return v2

    :pswitch_d
    const p0, 0x7f0800c1

    return p0

    :pswitch_e
    const p0, 0x7f080136

    return p0

    :pswitch_f
    return v3

    :pswitch_10
    const p0, 0x7f080102

    return p0

    :pswitch_11
    const p0, 0x7f08012e

    return p0

    :pswitch_12
    return v4

    :pswitch_13
    const p0, 0x7f080115

    return p0

    :pswitch_14
    return v4

    :pswitch_15
    const p0, 0x7f080156

    return p0

    :pswitch_16
    const p0, 0x7f0800fe

    return p0

    :pswitch_17
    const p0, 0x7f0800f4

    return p0

    :pswitch_18
    const p0, 0x7f0800c3

    return p0

    :pswitch_19
    const p0, 0x7f0800b7

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f7117e8 -> :sswitch_20
        -0x7dc75fe1 -> :sswitch_1f
        -0x7372330d -> :sswitch_1e
        -0x62c0a3ac -> :sswitch_1d
        -0x618d9def -> :sswitch_1c
        -0x5a577f88 -> :sswitch_1b
        -0x5839875b -> :sswitch_1a
        -0x506e162a -> :sswitch_19
        -0x4e316bd6 -> :sswitch_18
        -0x3466e9a3 -> :sswitch_17
        -0x34667642 -> :sswitch_16
        -0x2f3d5c09 -> :sswitch_15
        -0x1557a0ec -> :sswitch_14
        0x22d116e -> :sswitch_13
        0x9f214fa -> :sswitch_12
        0xd8ff59b -> :sswitch_11
        0x1ae6fe9e -> :sswitch_10
        0x23aea2e0 -> :sswitch_f
        0x2e5d67fa -> :sswitch_e
        0x38a142d2 -> :sswitch_d
        0x3985dc40 -> :sswitch_c
        0x3a8ae12d -> :sswitch_b
        0x4bd27ed2 -> :sswitch_a
        0x4bfaa0c9 -> :sswitch_9
        0x4bfd1196 -> :sswitch_8
        0x51085f7e -> :sswitch_7
        0x558c02fa -> :sswitch_6
        0x55d6ed89 -> :sswitch_5
        0x5c96f962 -> :sswitch_4
        0x788f0537 -> :sswitch_3
        0x7d051e98 -> :sswitch_2
        0x7f28f3ac -> :sswitch_1
        0x7fd135cb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
