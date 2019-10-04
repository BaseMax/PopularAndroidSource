.class public Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "AttachmentPreviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/apptentive/android/sdk/util/image/PreviewImageView$GestureCallback;


# instance fields
.field private closeButton:Landroid/widget/ImageButton;

.field private conversationToken:Ljava/lang/String;

.field private currentImage:Lcom/apptentive/android/sdk/util/image/ImageItem;

.field private header:Landroid/view/ViewGroup;

.field private height:I

.field private previewContainer:Landroid/view/View;

.field private previewImagePlaceholderView:Landroid/widget/ImageView;

.field private previewImageView:Lcom/apptentive/android/sdk/util/image/PreviewImageView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;)Lcom/apptentive/android/sdk/util/image/PreviewImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->previewImageView:Lcom/apptentive/android/sdk/util/image/PreviewImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->previewContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->previewImagePlaceholderView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static newInstance(Lcom/apptentive/android/sdk/util/image/ImageItem;Ljava/lang/String;)Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;
    .locals 3

    .line 56
    new-instance v0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "image"

    .line 58
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p0, "token"

    .line 59
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget p1, Lcom/apptentive/android/sdk/R$style;->ApptentiveTheme_Base_Versioned_TranslucentStatus_FullScreen:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 147
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 149
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget v1, Lcom/apptentive/android/sdk/R$style;->ApptentiveDialogAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 151
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/16 v1, 0x50

    .line 154
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 155
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 156
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 157
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 72
    sget p3, Lcom/apptentive/android/sdk/R$layout;->apptentive_dialog_image_preview:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 74
    :try_start_0
    sget v0, Lcom/apptentive/android/sdk/R$id;->preview_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->previewContainer:Landroid/view/View;

    .line 75
    sget v0, Lcom/apptentive/android/sdk/R$id;->preview_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 76
    sget v0, Lcom/apptentive/android/sdk/R$id;->preview_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/util/image/PreviewImageView;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->previewImageView:Lcom/apptentive/android/sdk/util/image/PreviewImageView;

    .line 77
    sget v0, Lcom/apptentive/android/sdk/R$id;->preview_image_placeholder:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->previewImagePlaceholderView:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->previewImageView:Lcom/apptentive/android/sdk/util/image/PreviewImageView;

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/util/image/PreviewImageView;->setGestureCallback(Lcom/apptentive/android/sdk/util/image/PreviewImageView$GestureCallback;)V

    .line 80
    sget v0, Lcom/apptentive/android/sdk/R$id;->header_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->header:Landroid/view/ViewGroup;

    .line 81
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->header:Landroid/view/ViewGroup;

    sget v1, Lcom/apptentive/android/sdk/R$id;->close_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->closeButton:Landroid/widget/ImageButton;

    .line 82
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->closeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog$1;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog$1;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;)V

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/util/image/ImageItem;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->currentImage:Lcom/apptentive/android/sdk/util/image/ImageItem;

    .line 93
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->conversationToken:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->width:I

    .line 97
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->height:I

    .line 98
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->width:I

    iget v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->height:I

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->previewContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-static {}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->getInstance()Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->conversationToken:Ljava/lang/String;

    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->currentImage:Lcom/apptentive/android/sdk/util/image/ImageItem;

    iget-object v3, p1, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->currentImage:Lcom/apptentive/android/sdk/util/image/ImageItem;

    iget-object v4, p1, Lcom/apptentive/android/sdk/util/image/ImageItem;->localCachePath:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->previewImageView:Lcom/apptentive/android/sdk/util/image/PreviewImageView;

    iget v7, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->width:I

    iget v8, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->height:I

    const/4 v9, 0x1

    new-instance v10, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog$2;

    invoke-direct {v10, p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog$2;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;)V

    invoke-virtual/range {v1 .. v10}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/ImageView;IIZLcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception in %s.onCreateView()"

    const/4 v1, 0x1

    .line 138
    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p3

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2
.end method

.method public onFlingDetected()V
    .locals 0

    .line 173
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->dismiss()V

    return-void
.end method

.method public onSingleTapDetected()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->closeButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method
