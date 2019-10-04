.class public final Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$appType$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewHolderItem.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;-><init>(ILjava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Ljava/lang/String;Ljava/lang/Integer;ZLcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$appType$2;->this$0:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$appType$2;->this$0:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-static {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->access$getApplicationType$p(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->INLINE:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->getValue()I

    move-result v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->INLINE:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    goto :goto_2

    .line 4
    :cond_1
    :goto_0
    sget-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->DUAL:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->getValue()I

    move-result v1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->DUAL:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    goto :goto_2

    .line 5
    :cond_3
    :goto_1
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->APP:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    :goto_2
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$appType$2;->invoke()Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    move-result-object v0

    return-object v0
.end method
