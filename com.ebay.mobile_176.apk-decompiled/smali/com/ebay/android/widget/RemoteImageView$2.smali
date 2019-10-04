.class synthetic Lcom/ebay/android/widget/RemoteImageView$2;
.super Ljava/lang/Object;
.source "RemoteImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/android/widget/RemoteImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$nautilus$domain$data$image$ImageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 618
    invoke-static {}, Lcom/ebay/nautilus/domain/data/image/ImageType;->values()[Lcom/ebay/nautilus/domain/data/image/ImageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/android/widget/RemoteImageView$2;->$SwitchMap$com$ebay$nautilus$domain$data$image$ImageType:[I

    :try_start_0
    sget-object v0, Lcom/ebay/android/widget/RemoteImageView$2;->$SwitchMap$com$ebay$nautilus$domain$data$image$ImageType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/image/ImageType;->Composite:Lcom/ebay/nautilus/domain/data/image/ImageType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/image/ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ebay/android/widget/RemoteImageView$2;->$SwitchMap$com$ebay$nautilus$domain$data$image$ImageType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/image/ImageType;->Local:Lcom/ebay/nautilus/domain/data/image/ImageType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/image/ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ebay/android/widget/RemoteImageView$2;->$SwitchMap$com$ebay$nautilus$domain$data$image$ImageType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/image/ImageType;->Remote:Lcom/ebay/nautilus/domain/data/image/ImageType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/image/ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
