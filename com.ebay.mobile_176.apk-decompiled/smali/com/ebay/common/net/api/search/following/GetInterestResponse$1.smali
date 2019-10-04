.class Lcom/ebay/common/net/api/search/following/GetInterestResponse$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "GetInterestResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/search/following/GetInterestResponse;->parse(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/search/following/GetInterestResponse;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/search/following/GetInterestResponse;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/GetInterestResponse$1;->this$0:Lcom/ebay/common/net/api/search/following/GetInterestResponse;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
