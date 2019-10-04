.class public Lcom/ebay/mobile/activities/ComposeNewMessageActivity$ContactSellerLinkProcessor;
.super Ljava/lang/Object;
.source "ComposeNewMessageActivity.java"

# interfaces
.implements Lcom/ebay/mobile/mktgtech/deeplinking/LinkProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/ComposeNewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactSellerLinkProcessor"
.end annotation


# static fields
.field public static final NAV_TARGET:Ljava/lang/String; = "user.contactseller"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processUri(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/mobile/mktgtech/deeplinking/MissingParameterException;,
            Lcom/ebay/mobile/mktgtech/deeplinking/MalformedParameterException;
        }
    .end annotation

    const-string/jumbo v0, "seller"

    .line 1101
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    .line 1102
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1108
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 1110
    new-instance v1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    const-string v2, ""

    invoke-direct {v1, p2, v0, v2, v3}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1112
    new-instance p2, Landroid/content/Intent;

    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "message_request_param"

    .line 1113
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "message_type"

    .line 1114
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "message_hide_photo_layout"

    .line 1115
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p2

    .line 1105
    :cond_0
    new-instance p1, Lcom/ebay/mobile/mktgtech/deeplinking/MissingParameterException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1106
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "%s link missing required parameter"

    .line 1105
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ebay/mobile/mktgtech/deeplinking/MissingParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
