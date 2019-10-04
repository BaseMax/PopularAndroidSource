.class public final synthetic Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$1$i_agAN4y5q1t32Mu28G7Z5L7JCQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/camera/BaseCameraFragment$1;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/camera/BaseCameraFragment$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$1$i_agAN4y5q1t32Mu28G7Z5L7JCQ;->f$0:Lcom/ebay/mobile/camera/BaseCameraFragment$1;

    iput p2, p0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$1$i_agAN4y5q1t32Mu28G7Z5L7JCQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$1$i_agAN4y5q1t32Mu28G7Z5L7JCQ;->f$0:Lcom/ebay/mobile/camera/BaseCameraFragment$1;

    iget v1, p0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraFragment$1$i_agAN4y5q1t32Mu28G7Z5L7JCQ;->f$1:I

    invoke-static {v0, v1}, Lcom/ebay/mobile/camera/BaseCameraFragment$1;->lambda$onSensorOrientationChanged$0(Lcom/ebay/mobile/camera/BaseCameraFragment$1;I)V

    return-void
.end method
