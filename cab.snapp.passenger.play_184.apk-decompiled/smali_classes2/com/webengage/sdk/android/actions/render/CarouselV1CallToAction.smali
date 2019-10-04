.class public Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;
.super Lcom/webengage/sdk/android/actions/render/CallToAction;


# instance fields
.field private imageURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/webengage/sdk/android/actions/render/CallToAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->imageURL:Ljava/lang/String;

    iput-object p4, p0, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->imageURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->imageURL:Ljava/lang/String;

    return-object v0
.end method

.method public setImageURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->imageURL:Ljava/lang/String;

    return-void
.end method
