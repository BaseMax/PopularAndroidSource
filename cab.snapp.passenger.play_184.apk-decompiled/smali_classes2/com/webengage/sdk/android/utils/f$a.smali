.class Lcom/webengage/sdk/android/utils/f$a;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/io/InputStream;

.field private b:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/f$a;->a:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput p1, p0, Lcom/webengage/sdk/android/utils/f$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/webengage/sdk/android/utils/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/utils/f$a;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/f$a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/webengage/sdk/android/utils/f$a;->b:I

    if-lez v0, :cond_0

    const/16 v0, 0xd9

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/webengage/sdk/android/utils/f$a;->b:I

    const/16 v0, 0xff

    :cond_1
    :goto_0
    return v0
.end method
