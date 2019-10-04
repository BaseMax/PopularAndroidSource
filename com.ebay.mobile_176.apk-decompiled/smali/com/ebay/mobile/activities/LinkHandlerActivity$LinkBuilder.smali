.class public Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;
.super Ljava/lang/Object;
.source "LinkHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/LinkHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkBuilder"
.end annotation


# instance fields
.field private additionalTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private excludeFromRecents:Z

.field private mc3id:Ljava/lang/String;

.field private notificationAction:Ljava/lang/String;

.field private notificationId:I

.field private refIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sid:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

.field private final source:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->refIdList:Ljava/util/List;

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->excludeFromRecents:Z

    .line 149
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iput-object p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->uri:Landroid/net/Uri;

    .line 152
    iput-object p2, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->source:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->refIdList:Ljava/util/List;

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->excludeFromRecents:Z

    .line 163
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->uri:Landroid/net/Uri;

    .line 166
    iput-object p2, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addReferenceId(Ljava/lang/String;)Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;
    .locals 1

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->refIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 229
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->uri:Landroid/net/Uri;

    const-class v3, Lcom/ebay/mobile/activities/LinkHandlerActivity;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "dl_source"

    .line 230
    iget-object v1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->source:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "notification_action"

    .line 231
    iget-object v1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->notificationAction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "nid"

    .line 232
    iget v1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->notificationId:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "noti_rid_list"

    .line 234
    iget-object v1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->refIdList:Ljava/util/List;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "com.ebay.mobile.analytics.sid"

    .line 236
    iget-object v1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->sid:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "mc3id"

    .line 237
    iget-object v1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->mc3id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->additionalTags:Ljava/util/Map;

    instance-of p1, p1, Ljava/io/Serializable;

    if-eqz p1, :cond_1

    const-string p1, "additional_tags"

    .line 242
    iget-object v1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->additionalTags:Ljava/util/Map;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 244
    :cond_1
    iget-boolean p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->excludeFromRecents:Z

    if-eqz p1, :cond_2

    const/high16 p1, 0x800000

    .line 245
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method public getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .line 259
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 264
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public launch(Landroid/content/Context;)V
    .locals 1

    .line 269
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setAdditionalTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->additionalTags:Ljava/util/Map;

    return-void
.end method

.method public setExcludeFromeRecents(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->excludeFromRecents:Z

    return-void
.end method

.method public setMc3Id(Ljava/lang/String;)Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->mc3id:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationAction(Ljava/lang/String;)Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->notificationAction:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationId(I)Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;
    .locals 0

    .line 177
    iput p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->notificationId:I

    return-object p0
.end method

.method public setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->sid:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    return-object p0
.end method
