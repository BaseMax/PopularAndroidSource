.class public final Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;
.super Lcom/farsitel/bazaar/common/model/page/MovieVitrinSection;
.source "PageType.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/page/VitrinItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/page/VitrinItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Movie"
.end annotation


# instance fields
.field public final action:Ljava/lang/String;

.field public final referrer:Ljava/lang/String;

.field public final slug:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/page/MovieItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "_title"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoList"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    .line 1
    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/common/model/page/MovieVitrinSection;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILh/f/b/f;)V

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;->action:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;->slug:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;->referrer:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_VIDEO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;->viewType:I

    return-void
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;->viewType:I

    return v0
.end method
