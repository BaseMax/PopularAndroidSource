.class Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1$1;
.super Ljava/lang/Object;
.source "ApptentiveAvatarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;

.field final synthetic val$finalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1$1;->this$1:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1$1;->this$1:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;

    iget-object v0, v0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
