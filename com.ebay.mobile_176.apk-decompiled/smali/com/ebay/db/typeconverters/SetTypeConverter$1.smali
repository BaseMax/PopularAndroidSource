.class Lcom/ebay/db/typeconverters/SetTypeConverter$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "SetTypeConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/typeconverters/SetTypeConverter;->toSet(Ljava/lang/String;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/db/typeconverters/SetTypeConverter;


# direct methods
.method constructor <init>(Lcom/ebay/db/typeconverters/SetTypeConverter;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/ebay/db/typeconverters/SetTypeConverter$1;->this$0:Lcom/ebay/db/typeconverters/SetTypeConverter;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
