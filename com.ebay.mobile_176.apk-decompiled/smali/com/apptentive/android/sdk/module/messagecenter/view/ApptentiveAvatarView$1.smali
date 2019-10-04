.class Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;
.super Ljava/lang/Thread;
.source "ApptentiveAvatarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;->fetchImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;->val$urlString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 228
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;->val$urlString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Error opening avatar from URL: \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;->val$urlString:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;

    invoke-static {v1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;->access$000(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;

    new-instance v2, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1$1;

    invoke-direct {v2, p0, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1$1;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
