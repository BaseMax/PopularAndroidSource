.class public final Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;
.super Ljava/lang/Object;
.source "IntentHandlerImpl.kt"

# interfaces
.implements Lc/c/a/b/e/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;,
        Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$a;


# instance fields
.field public final b:Lc/c/a/b/e/b;

.field public final c:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a:Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$a;

    return-void
.end method

.method public constructor <init>(Lc/c/a/b/e/b;Ljava/util/Locale;)V
    .locals 1

    const-string v0, "navManager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    iput-object p2, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->c:Ljava/util/Locale;

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-string p3, ""

    .line 96
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const-string v0, "id"

    .line 104
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "slug"

    .line 105
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "q"

    .line 106
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "review_id"

    .line 107
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    move-object v1, v3

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_4

    const/4 p1, 0x1

    .line 109
    new-array v2, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "/"

    aput-object v0, v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 110
    invoke-static/range {v1 .. v6}, Lh/k/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Lh/a/u;->g(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1}, Lc/c/a/d$l;->m()Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;Lb/b/a/m;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrerList"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 3
    new-instance v0, Lc/c/a/c/d/a$b;

    invoke-direct {v0}, Lc/c/a/c/d/a$b;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4
    :cond_2
    new-instance v1, Lc/c/a/c/d/a$b;

    invoke-direct {v1}, Lc/c/a/c/d/a$b;-><init>()V

    invoke-virtual {v1, v0}, Lc/c/a/c/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v1, "intent_source"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    new-instance v2, Lc/c/a/c/d/b;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "intent.getStringExtra(EXTRA_INTENT_SOURCE)"

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lc/c/a/c/d/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lc/c/a/c/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v3, "details"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_4

    :sswitch_1
    const-string p1, "settings"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->g()V

    goto/16 :goto_9

    :sswitch_2
    const-string p1, "downloads"

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b()V

    goto/16 :goto_9

    :sswitch_3
    const-string p1, "download_videos"

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a()V

    goto/16 :goto_9

    :sswitch_4
    const-string p1, "serial_details"

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_5

    :sswitch_5
    const-string v3, "market.android.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_4

    :sswitch_6
    const-string p1, "terms"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->h()V

    goto/16 :goto_9

    :sswitch_7
    const-string p1, "pages"

    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_7

    :sswitch_8
    const-string p1, "notes"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->f()V

    goto/16 :goto_9

    :sswitch_9
    const-string p1, "catslist"

    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :sswitch_a
    const-string v3, "play.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :sswitch_b
    const-string p1, "page"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_7

    :sswitch_c
    const-string p1, "home"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->d()V

    goto/16 :goto_9

    :sswitch_d
    const-string p1, "apps"

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_7

    :sswitch_e
    const-string p1, "cat"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_f
    const-string v3, "app"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 23
    :goto_4
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/content/Intent;Lb/b/a/m;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_10
    const-string p1, "feedback"

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 25
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->c()V

    goto/16 :goto_9

    :sswitch_11
    const-string p1, "episode_details"

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_6

    :sswitch_12
    const-string v1, "cafebazaar.ir"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_8

    :sswitch_13
    const-string p1, "video_details"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->k(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_14
    const-string p1, "review_reply"

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->c(Landroid/net/Uri;)V

    goto/16 :goto_9

    :sswitch_15
    const-string p1, "videos"

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->i()V

    goto :goto_9

    :sswitch_16
    const-string p1, "serial"

    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 33
    :goto_5
    invoke-virtual {p0, v1, v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->i(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_9

    :sswitch_17
    const-string p1, "search"

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 35
    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->d(Landroid/net/Uri;)V

    goto :goto_9

    :sswitch_18
    const-string p1, "season_episodes"

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    invoke-virtual {p0, v1, v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->h(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_9

    :sswitch_19
    const-string p1, "episode"

    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 39
    :goto_6
    invoke-virtual {p0, v1, v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->d(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_9

    :sswitch_1a
    const-string p1, "collection"

    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 41
    :goto_7
    invoke-virtual {p0, v1, v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->g(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_9

    :sswitch_1b
    const-string p1, "support"

    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->c()V

    goto :goto_9

    :sswitch_1c
    const-string v1, "www.cafebazaar.ir"

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 45
    :goto_8
    invoke-virtual {p0, p1, p2, v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/content/Intent;Lb/b/a/m;Ljava/lang/String;)V

    goto :goto_9

    :sswitch_1d
    const-string p1, "my_bazaar"

    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 47
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->e()V

    :cond_5
    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7733c7b6 -> :sswitch_1d
        -0x7100c0f4 -> :sswitch_1c
        -0x6e8d8031 -> :sswitch_1b
        -0x67ca5162 -> :sswitch_1a
        -0x5c0e4205 -> :sswitch_19
        -0x4b18a84c -> :sswitch_18
        -0x36059a58 -> :sswitch_17
        -0x35fe020c -> :sswitch_16
        -0x30ad84a8 -> :sswitch_15
        -0x2f4f74bd -> :sswitch_14
        -0x2a59fd82 -> :sswitch_13
        -0x259db4dd -> :sswitch_12
        -0xe99d402 -> :sswitch_11
        -0xb6a147b -> :sswitch_10
        0x17a21 -> :sswitch_f
        0x17fd6 -> :sswitch_e
        0x2dca72 -> :sswitch_d
        0x30f4df -> :sswitch_c
        0x34628f -> :sswitch_b
        0x1b24f46 -> :sswitch_a
        0x3ca357b -> :sswitch_9
        0x6424ec1 -> :sswitch_8
        0x657efc4 -> :sswitch_7
        0x6924987 -> :sswitch_6
        0xdbfa2d0 -> :sswitch_5
        0x155762f7 -> :sswitch_4
        0x251686ef -> :sswitch_3
        0x4e3e48eb -> :sswitch_2
        0x5582bc23 -> :sswitch_1
        0x5cd8f242 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Landroid/content/Intent;Lb/b/a/m;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.EDIT"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0, p2, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Lb/b/a/m;Landroid/net/Uri;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    const-string p3, "intentData.pathSegments"

    invoke-static {p2, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lh/a/u;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "lists"

    invoke-static {p2, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dynamic?slug="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Intent;Lb/b/a/m;Ljava/lang/String;)V
    .locals 5

    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 51
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p1, "details"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 52
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "segments[0]"

    invoke-static {p1, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v1, "Locale.getDefault()"

    invoke-static {p3, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v1, 0x2

    const-string v3, "cafebazaar.ir/app/"

    .line 53
    invoke-static {p1, v3, v2, v1, p3}, Lh/k/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "play.google.com"

    .line 54
    invoke-static {p1, v3, v2, v1, p3}, Lh/k/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "market.android.com"

    .line 55
    invoke-static {p1, v3, v2, v1, p3}, Lh/k/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 56
    :cond_2
    invoke-virtual {p0, p2, v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Lb/b/a/m;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 57
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_1
    const-string p1, "video"

    .line 58
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 59
    invoke-virtual {p0, v0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->k(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_2
    const-string p1, "pages"

    .line 60
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :sswitch_3
    const-string p1, "lists"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 61
    invoke-virtual {p0, v0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->f(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_4
    const-string p1, "catslist"

    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :sswitch_5
    const-string p1, "page"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 63
    :goto_0
    invoke-virtual {p0, v0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->g(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_6
    const-string p1, "game"

    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p0, v0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->e(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_7
    const-string p1, "cast"

    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 67
    invoke-virtual {p0, v0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_8
    const-string p1, "cat"

    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 69
    :goto_1
    invoke-virtual {p0, v0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_9
    const-string v1, "app"

    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/content/Intent;Lb/b/a/m;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_a
    const-string p1, "developer"

    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 73
    invoke-virtual {p0, v0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->c(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_b
    const-string p1, "editor_review"

    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 75
    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b(Landroid/net/Uri;)V

    goto :goto_2

    :sswitch_c
    const-string p1, "series"

    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 77
    invoke-virtual {p0, v0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->j(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_d
    const-string p1, "serial"

    .line 78
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 79
    invoke-virtual {p0, v0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->i(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_e
    const-string p1, "search"

    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 81
    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->d(Landroid/net/Uri;)V

    goto :goto_2

    :sswitch_f
    const-string p1, "episode"

    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 83
    invoke-virtual {p0, v0, p3}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->d(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c0e4205 -> :sswitch_f
        -0x36059a58 -> :sswitch_e
        -0x35fe020c -> :sswitch_d
        -0x35fe0189 -> :sswitch_c
        -0x2c243196 -> :sswitch_b
        -0x4cf1836 -> :sswitch_a
        0x17a21 -> :sswitch_9
        0x17fd6 -> :sswitch_8
        0x2e7b3f -> :sswitch_7
        0x304bf2 -> :sswitch_6
        0x34628f -> :sswitch_5
        0x3ca357b -> :sswitch_4
        0x6236395 -> :sswitch_3
        0x657efc4 -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x5cd8f242 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 100
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    const-string v2, ""

    invoke-virtual {v1, p1, v2, p2}, Lc/c/a/d$l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 103
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public final a(Lb/b/a/m;Landroid/net/Uri;)V
    .locals 1

    .line 90
    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 91
    sget-object v0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->u:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity$a;

    invoke-virtual {v0, p1, p2}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity$a;->a(Lb/b/a/m;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 93
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lc/c/a/d$l;->a(Lc/c/a/d$l;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v1, Lc/c/a/n/l/h;->a:Lc/c/a/n/l/h$a;

    invoke-virtual {v1, p1, p2, p3, p4}, Lc/c/a/n/l/h$a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 99
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1}, Lc/c/a/d$l;->f()Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category/?cat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v2, p0

    move-object v6, p2

    .line 3
    invoke-static/range {v2 .. v8}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->g()Lcom/farsitel/bazaar/ui/home/MainActivity;

    move-result-object v0

    const-string v1, "http://help.cafebazaar.ir/"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1, p1}, Lc/c/a/d$l;->a(I)Lb/w/p;

    move-result-object p1

    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh/h;->a:Lh/h;

    :cond_0
    :goto_0
    return-void
.end method

.method public final c(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9

    .line 6
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "developer_apps/?slug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v5, ""

    move-object v2, p0

    move-object v6, p2

    .line 8
    invoke-static/range {v2 .. v8}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1}, Lc/c/a/d$l;->d()Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/net/Uri;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v3}, Lc/c/a/d$l;->b(Lc/c/a/d$l;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    .line 4
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const-string v2, "seasonIdx"

    .line 5
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception p1

    .line 7
    sget-object v2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "invalid seasonIndex in handleIntent"

    invoke-direct {v3, v4, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {p1}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    sget-object v2, Lc/c/a/n/j/d/p;->a:Lc/c/a/n/j/d/p$c;

    invoke-virtual {v2, v0, v1, p2}, Lc/c/a/n/j/d/p$c;->b(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;

    move-result-object p2

    .line 10
    invoke-static {p1, p2}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1}, Lc/c/a/d$l;->h()Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1}, Lc/c/a/d$l;->j()Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public final f(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamic?slug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v2, p0

    move-object v6, p2

    .line 3
    invoke-static/range {v2 .. v8}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1}, Lc/c/a/d$l;->k()Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "by_author"

    .line 2
    invoke-static {v0, v4, v2, v1, v3}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "aid"

    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "developer_apps/?slug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v5, v0

    goto/16 :goto_2

    :cond_1
    const-string v4, "by_category"

    .line 5
    invoke-static {v0, v4, v2, v1, v3}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "cid"

    .line 6
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category/?cat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string p1, "upgradable"

    .line 8
    invoke-static {v0, p1, v2, v1, v3}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {p1}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    sget-object v0, Lc/c/a/n/A/e;->a:Lc/c/a/n/A/e$a;

    invoke-virtual {v0}, Lc/c/a/n/A/e$a;->a()Lb/w/p;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_3
    :goto_1
    move-object v5, v3

    goto/16 :goto_2

    :cond_4
    const-string p1, "bookmarked"

    .line 11
    invoke-static {v0, p1, v2, v1, v3}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {p1}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    sget-object v0, Lc/c/a/n/d/a;->a:Lc/c/a/n/d/a$a;

    invoke-virtual {v0}, Lc/c/a/n/d/a$a;->a()Lb/w/p;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto :goto_1

    :cond_5
    const-string p1, "installed"

    .line 14
    invoke-static {v0, p1, v2, v1, v3}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {p1}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    sget-object v0, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v0}, Lc/c/a/d$l;->e()Lb/w/p;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto :goto_1

    :cond_6
    const-string p1, "malicious"

    .line 17
    invoke-static {v0, p1, v2, v1, v3}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    iget-object p1, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {p1}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    sget-object v0, Lc/c/a/n/q/c;->a:Lc/c/a/n/q/c$a;

    invoke-virtual {v0}, Lc/c/a/n/q/c$a;->a()Lb/w/p;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto :goto_1

    :cond_7
    const-string p1, "bought"

    .line 20
    invoke-static {v0, p1, v2, v1, v3}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    iget-object p1, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {p1}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 22
    sget-object v0, Lc/c/a/n/e/a;->a:Lc/c/a/n/e/a$a;

    invoke-virtual {v0}, Lc/c/a/n/e/a$a;->a()Lb/w/p;

    move-result-object v0

    .line 23
    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto :goto_1

    :cond_8
    const-string p1, "last_played_videos"

    .line 24
    invoke-static {v0, p1, v2, v1, v3}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 25
    iget-object p1, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {p1}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 26
    sget-object v0, Lc/c/a/n/j/f/a;->a:Lc/c/a/n/j/f/a$a;

    invoke-virtual {v0}, Lc/c/a/n/j/f/a$a;->a()Lb/w/p;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto/16 :goto_1

    :cond_9
    const-string p1, "offline"

    .line 27
    invoke-static {v0, p1, v2, v1, v3}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {p1}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 29
    sget-object v0, Lc/c/a/n/j/c/e;->a:Lc/c/a/n/j/c/e$a;

    invoke-virtual {v0}, Lc/c/a/n/j/c/e$a;->a()Lb/w/p;

    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto/16 :goto_1

    :goto_2
    if-eqz v5, :cond_a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v4, p0

    move-object v8, p2

    .line 31
    invoke-static/range {v4 .. v10}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public final h()V
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->g()Lcom/farsitel/bazaar/ui/home/MainActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://cafebazaar.ir/terms/?l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->c:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "&is_internal=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final h(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 2
    new-array v1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "|"

    aput-object v3, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lh/k/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lh/a/u;->g(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {v0, p1}, Lh/a/u;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v2, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v2, v1, p1, p2}, Lc/c/a/d$l;->b(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1}, Lc/c/a/d$l;->n()Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public final i(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {p1}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lc/c/a/d;->a:Lc/c/a/d$l;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lc/c/a/d$l;->a(Lc/c/a/d$l;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public final j(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v2, "intentData.pathSegments"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lh/a/u;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "lists"

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sl?slug="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v2, p0

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-static {v0, p1}, Lh/a/u;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;->EPISODE:Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p1, Lc/c/a/d;->a:Lc/c/a/d$l;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, p2}, Lc/c/a/d$l;->a(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;->SERIAL:Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object v0, Lc/c/a/d;->a:Lc/c/a/d$l;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lc/c/a/d$l;->a(Lc/c/a/d$l;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 8
    iget-object p2, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {p2}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p2, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final k(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const-string v1, "intentData.pathSegments"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lh/a/u;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "lists"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vl?slug="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v2, p0

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->a(Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;->b:Lc/c/a/b/e/b;

    invoke-virtual {p1}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1, v0, p2}, Lc/c/a/d$l;->c(Ljava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p2

    invoke-static {p1, p2}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_1
    :goto_0
    return-void
.end method
