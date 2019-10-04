.class public final Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout;
.super Ljava/lang/Object;
.source "PageTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/PageTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Layout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;
    }
.end annotation


# instance fields
.field public meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

.field public name:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

.field public positions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/Position;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
