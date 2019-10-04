.class public final enum Lcom/yandex/metrica/impl/ob/en;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/en;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/en;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/en;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/ob/en;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/yandex/metrica/impl/ob/en;

    const/4 v1, 0x0

    const-string v2, "FOREGROUND"

    invoke-direct {v0, v2, v1, v1}, Lcom/yandex/metrica/impl/ob/en;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/en;->a:Lcom/yandex/metrica/impl/ob/en;

    new-instance v0, Lcom/yandex/metrica/impl/ob/en;

    const/4 v2, 0x1

    const-string v3, "BACKGROUND"

    invoke-direct {v0, v3, v2, v2}, Lcom/yandex/metrica/impl/ob/en;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/en;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/en;

    .line 11
    sget-object v3, Lcom/yandex/metrica/impl/ob/en;->a:Lcom/yandex/metrica/impl/ob/en;

    aput-object v3, v0, v1

    sget-object v1, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/en;

    aput-object v1, v0, v2

    sput-object v0, Lcom/yandex/metrica/impl/ob/en;->d:[Lcom/yandex/metrica/impl/ob/en;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/yandex/metrica/impl/ob/en;->c:I

    return-void
.end method

.method public static a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/en;
    .locals 2

    .line 26
    sget-object v0, Lcom/yandex/metrica/impl/ob/en;->a:Lcom/yandex/metrica/impl/ob/en;

    if-eqz p0, :cond_2

    .line 28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/en;

    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/en;->a:Lcom/yandex/metrica/impl/ob/en;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/en;
    .locals 1

    .line 11
    const-class v0, Lcom/yandex/metrica/impl/ob/en;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/en;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/en;
    .locals 1

    .line 11
    sget-object v0, Lcom/yandex/metrica/impl/ob/en;->d:[Lcom/yandex/metrica/impl/ob/en;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/en;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/en;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/yandex/metrica/impl/ob/en;->c:I

    return v0
.end method
