.class final Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;
.super Ljava/lang/Object;
.source "ShortFormEulaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalContent"
.end annotation


# instance fields
.field public data:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;->data:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$1;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;-><init>()V

    return-void
.end method
