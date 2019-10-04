.class Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$ImageScale;
.super Ljava/lang/Object;
.source "ApptentiveAvatarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageScale"
.end annotation


# instance fields
.field public deltaX:F

.field public deltaY:F

.field public scale:F

.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;


# direct methods
.method private constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$ImageScale;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 277
    iput p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$ImageScale;->scale:F

    const/4 p1, 0x0

    .line 278
    iput p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$ImageScale;->deltaX:F

    .line 279
    iput p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$ImageScale;->deltaY:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$ImageScale;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "scale = %f, deltaX = %f, deltaY = %f"

    const/4 v1, 0x3

    .line 283
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$ImageScale;->scale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$ImageScale;->deltaX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$ImageScale;->deltaY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
