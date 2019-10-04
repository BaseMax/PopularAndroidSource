.class public Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;
.super Ljava/lang/Object;
.source "ImagePathGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/camera/ImagePathGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImagePathDirectory"
.end annotation


# instance fields
.field private final PICTURES_SUB_DIRECTORY:Ljava/lang/String;

.field private picturesDirectory:Ljava/io/File;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eBay"

    .line 67
    iput-object v0, p0, Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;->PICTURES_SUB_DIRECTORY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public makeAndGet()Ljava/io/File;
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;->picturesDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "eBay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;->picturesDirectory:Ljava/io/File;

    .line 75
    iget-object v0, p0, Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;->picturesDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/camera/ImagePathGenerator$ImagePathDirectory;->picturesDirectory:Ljava/io/File;

    return-object v0
.end method
