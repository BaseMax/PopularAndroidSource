.class public final Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;
.super Lcom/farsitel/bazaar/common/model/page/AppVitrinSection;
.source "PageType.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/page/VitrinItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/page/VitrinItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "App"
.end annotation


# instance fields
.field public final action:Ljava/lang/String;

.field public final referrer:Ljava/lang/String;

.field public final showInstalledApp:Z

.field public final slug:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageAppItem;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p6

    const-string v0, "_title"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appList"

    move-object v1, p3

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {v10, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p4

    move-object/from16 v5, p6

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/farsitel/bazaar/common/model/page/AppVitrinSection;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILh/f/b/f;)V

    move-object v0, p2

    iput-object v0, v9, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->action:Ljava/lang/String;

    move-object v0, p4

    iput-object v0, v9, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->slug:Ljava/lang/String;

    move/from16 v0, p5

    iput-boolean v0, v9, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->showInstalledApp:Z

    iput-object v10, v9, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->referrer:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    iput v0, v9, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;ILh/f/b/f;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowInstalledApp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->showInstalledApp:Z

    return v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;->viewType:I

    return v0
.end method
