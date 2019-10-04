.class public abstract Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;
.super Ljava/lang/Object;
.source "PageType.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/page/VitrinItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/page/VitrinItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Hami"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;
    }
.end annotation


# instance fields
.field public final hami:Lcom/farsitel/bazaar/common/model/page/HamiItem;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/page/HamiItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;->hami:Lcom/farsitel/bazaar/common/model/page/HamiItem;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/page/HamiItem;Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/page/HamiItem;)V

    return-void
.end method


# virtual methods
.method public getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;->hami:Lcom/farsitel/bazaar/common/model/page/HamiItem;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;->title:Ljava/lang/String;

    return-object v0
.end method
