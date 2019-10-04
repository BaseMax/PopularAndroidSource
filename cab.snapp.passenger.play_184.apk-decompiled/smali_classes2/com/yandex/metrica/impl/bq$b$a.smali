.class public final enum Lcom/yandex/metrica/impl/bq$b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bq$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/bq$b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/bq$b$a;

.field public static final enum b:Lcom/yandex/metrica/impl/bq$b$a;

.field private static final synthetic c:[Lcom/yandex/metrica/impl/bq$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 160
    new-instance v0, Lcom/yandex/metrica/impl/bq$b$a;

    const/4 v1, 0x0

    const-string v2, "BAD"

    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/bq$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/bq$b$a;->a:Lcom/yandex/metrica/impl/bq$b$a;

    new-instance v0, Lcom/yandex/metrica/impl/bq$b$a;

    const/4 v2, 0x1

    const-string v3, "OK"

    invoke-direct {v0, v3, v2}, Lcom/yandex/metrica/impl/bq$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/bq$b$a;->b:Lcom/yandex/metrica/impl/bq$b$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yandex/metrica/impl/bq$b$a;

    sget-object v3, Lcom/yandex/metrica/impl/bq$b$a;->a:Lcom/yandex/metrica/impl/bq$b$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/yandex/metrica/impl/bq$b$a;->b:Lcom/yandex/metrica/impl/bq$b$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/yandex/metrica/impl/bq$b$a;->c:[Lcom/yandex/metrica/impl/bq$b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/bq$b$a;
    .locals 1

    .line 160
    const-class v0, Lcom/yandex/metrica/impl/bq$b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/bq$b$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/bq$b$a;
    .locals 1

    .line 160
    sget-object v0, Lcom/yandex/metrica/impl/bq$b$a;->c:[Lcom/yandex/metrica/impl/bq$b$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/bq$b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/bq$b$a;

    return-object v0
.end method
