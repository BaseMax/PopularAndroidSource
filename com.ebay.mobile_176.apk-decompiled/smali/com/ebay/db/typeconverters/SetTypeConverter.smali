.class public Lcom/ebay/db/typeconverters/SetTypeConverter;
.super Ljava/lang/Object;
.source "SetTypeConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromSet(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/ebay/db/typeconverters/GsonSingleton;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/ebay/db/typeconverters/SetTypeConverter$1;

    invoke-direct {v0, p0}, Lcom/ebay/db/typeconverters/SetTypeConverter$1;-><init>(Lcom/ebay/db/typeconverters/SetTypeConverter;)V

    invoke-virtual {v0}, Lcom/ebay/db/typeconverters/SetTypeConverter$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/ebay/db/typeconverters/GsonSingleton;->getInstance()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method
