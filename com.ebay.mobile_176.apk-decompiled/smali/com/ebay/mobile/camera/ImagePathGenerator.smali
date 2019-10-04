.class Lcom/ebay/mobile/camera/ImagePathGenerator;
.super Ljava/lang/Object;
.source "ImagePathGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;
    }
.end annotation


# instance fields
.field private final directory:Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;

.field private final formatter:Ljava/text/SimpleDateFormat;

.field private lastMillis:J

.field private sameSecondCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;

    invoke-direct {v0}, Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;-><init>()V

    invoke-direct {p0, v0}, Lcom/ebay/mobile/camera/ImagePathGenerator;-><init>(Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;)V

    return-void
.end method

.method constructor <init>(Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/ebay/mobile/camera/ImagePathGenerator;->formatter:Ljava/text/SimpleDateFormat;

    .line 33
    iput-object p1, p0, Lcom/ebay/mobile/camera/ImagePathGenerator;->directory:Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;

    return-void
.end method


# virtual methods
.method generateFilePath(Ljava/util/Date;)Ljava/io/File;
    .locals 2
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ebay/mobile/camera/ImagePathGenerator;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/camera/ImagePathGenerator;->generateName(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected generateName(Ljava/util/Date;)Ljava/lang/String;
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/ebay/mobile/camera/ImagePathGenerator;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    .line 52
    div-long v5, v1, v3

    iget-wide v7, p0, Lcom/ebay/mobile/camera/ImagePathGenerator;->lastMillis:J

    div-long/2addr v7, v3

    cmp-long p1, v5, v7

    if-nez p1, :cond_0

    .line 54
    iget p1, p0, Lcom/ebay/mobile/camera/ImagePathGenerator;->sameSecondCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ebay/mobile/camera/ImagePathGenerator;->sameSecondCount:I

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ebay/mobile/camera/ImagePathGenerator;->sameSecondCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/ebay/mobile/camera/ImagePathGenerator;->sameSecondCount:I

    .line 60
    :goto_0
    iput-wide v1, p0, Lcom/ebay/mobile/camera/ImagePathGenerator;->lastMillis:J

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getDirectory()Ljava/io/File;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ebay/mobile/camera/ImagePathGenerator;->directory:Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;

    invoke-virtual {v0}, Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;->makeAndGet()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
