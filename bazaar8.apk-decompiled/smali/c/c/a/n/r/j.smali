.class public final Lc/c/a/n/r/j;
.super Ljava/lang/Object;
.source "MyBazaarDataFactory.kt"


# static fields
.field public static final a:Lc/c/a/n/r/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/r/j;

    invoke-direct {v0}, Lc/c/a/n/r/j;-><init>()V

    sput-object v0, Lc/c/a/n/r/j;->a:Lc/c/a/n/r/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarDividerItem;

    invoke-direct {v1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarDividerItem;-><init>()V

    .line 52
    new-instance v12, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    const v2, 0x7f0a03da

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 54
    new-instance v9, Lcom/farsitel/bazaar/analytics/model/what/DownloadedVideosItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/farsitel/bazaar/analytics/model/what/DownloadedVideosItemClick;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0a0240

    const v4, 0x7f10008a

    const v5, 0x7f08010f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v2, v12

    .line 55
    invoke-direct/range {v2 .. v11}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;-><init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;ILh/f/b/f;)V

    .line 56
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    const v3, 0x7f0a0292

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 60
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/PlayedVideoHistoryItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayedVideoHistoryItemClick;-><init>(Ljava/lang/String;)V

    const v14, 0x7f0a0241

    const v15, 0x7f100225

    const v16, 0x7f08010b

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x18

    const/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v20, v3

    .line 61
    invoke-direct/range {v13 .. v22}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;-><init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;ILh/f/b/f;)V

    .line 62
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    const v3, 0x7f0a023f

    const v4, 0x7f100048

    const v5, 0x7f08010e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v2, 0x7f0a01a1

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 66
    new-instance v9, Lcom/farsitel/bazaar/analytics/model/what/BoughtVideosItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/farsitel/bazaar/analytics/model/what/BoughtVideosItemClick;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v2, v1

    .line 67
    invoke-direct/range {v2 .. v11}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;-><init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;ILh/f/b/f;)V

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarDividerItem;

    invoke-direct {v1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarDividerItem;-><init>()V

    .line 3
    new-instance v12, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    const v2, 0x7f0a03c5

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 5
    new-instance v9, Lcom/farsitel/bazaar/analytics/model/what/UpgradableAppsItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/farsitel/bazaar/analytics/model/what/UpgradableAppsItemClick;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0a023e

    const v4, 0x7f100215

    const v5, 0x7f08010f

    const/4 v6, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v2, v12

    move-object/from16 v7, p2

    .line 6
    invoke-direct/range {v2 .. v11}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;-><init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;ILh/f/b/f;)V

    .line 7
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    const v3, 0x7f0a01e4

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 11
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/InstalledAppsItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/farsitel/bazaar/analytics/model/what/InstalledAppsItemClick;-><init>(Ljava/lang/String;)V

    const v14, 0x7f0a0239

    const v15, 0x7f100100

    const v16, 0x7f080110

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x18

    const/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v20, v3

    .line 12
    invoke-direct/range {v13 .. v22}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;-><init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;ILh/f/b/f;)V

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    const v3, 0x7f0a0214

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 17
    new-instance v11, Lcom/farsitel/bazaar/analytics/model/what/MaliciousAppItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Lcom/farsitel/bazaar/analytics/model/what/MaliciousAppItemClick;-><init>(Ljava/lang/String;)V

    const v5, 0x7f0a023b

    const v6, 0x7f100113

    const v7, 0x7f0800e7

    const/4 v8, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v4, v2

    move-object/from16 v9, p3

    .line 18
    invoke-direct/range {v4 .. v13}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;-><init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;ILh/f/b/f;)V

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v2, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    const v3, 0x7f0a01fc

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 23
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/RecentDownloadedAppsItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/farsitel/bazaar/analytics/model/what/RecentDownloadedAppsItemClick;-><init>(Ljava/lang/String;)V

    const v15, 0x7f0a023c

    const v16, 0x7f100105

    const v17, 0x7f08010b

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x18

    const/16 v23, 0x0

    move-object v14, v2

    move-object/from16 v21, v3

    .line 24
    invoke-direct/range {v14 .. v23}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;-><init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;ILh/f/b/f;)V

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 27
    new-instance v12, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    const v3, 0x7f0a0236

    const v4, 0x7f100046

    const v5, 0x7f0800e9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v2, 0x7f0a00bf

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 29
    new-instance v9, Lcom/farsitel/bazaar/analytics/model/what/BookmarkedAppsItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/farsitel/bazaar/analytics/model/what/BookmarkedAppsItemClick;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v2, v12

    .line 30
    invoke-direct/range {v2 .. v11}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;-><init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;ILh/f/b/f;)V

    .line 31
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v2, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    const v14, 0x7f0a0237

    const v15, 0x7f100048

    const v16, 0x7f08010e

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v3, 0x7f0a01a0

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 35
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/BoughtAppsItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/farsitel/bazaar/analytics/model/what/BoughtAppsItemClick;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x18

    const/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v20, v3

    .line 36
    invoke-direct/range {v13 .. v22}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;-><init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;ILh/f/b/f;)V

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v2, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    const v5, 0x7f0a0235

    const v6, 0x7f10002c

    const v7, 0x7f080112

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v3, 0x7f0a035f

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 41
    new-instance v11, Lcom/farsitel/bazaar/analytics/model/what/BoughtSubscriptionsItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Lcom/farsitel/bazaar/analytics/model/what/BoughtSubscriptionsItemClick;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x18

    const/4 v13, 0x0

    move-object v4, v2

    .line 42
    invoke-direct/range {v4 .. v13}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;-><init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;ILh/f/b/f;)V

    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez p5, :cond_1

    if-eqz p4, :cond_2

    .line 45
    :cond_1
    new-instance v2, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;

    const v15, 0x7f0a023a

    const v16, 0x7f100125

    const v17, 0x7f080138

    .line 46
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/BazaarKidsItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/farsitel/bazaar/analytics/model/what/BazaarKidsItemClick;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    move/from16 v18, p5

    move-object/from16 v19, v3

    .line 47
    invoke-direct/range {v14 .. v19}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;-><init>(IIIZLcom/farsitel/bazaar/analytics/model/what/WhatType;)V

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
