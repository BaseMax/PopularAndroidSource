.class Lcom/ebay/db/typeconverters/BundleTypeConverter$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "BundleTypeConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/typeconverters/BundleTypeConverter;->toBundle(Ljava/lang/String;)Landroid/os/Bundle;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/db/typeconverters/BundleTypeConverter;


# direct methods
.method constructor <init>(Lcom/ebay/db/typeconverters/BundleTypeConverter;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/ebay/db/typeconverters/BundleTypeConverter$1;->this$0:Lcom/ebay/db/typeconverters/BundleTypeConverter;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
