.class public Lcom/ebay/app/AlertDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/app/AlertDialogFragment$Builder;,
        Lcom/ebay/app/AlertDialogFragment$Fields;
    }
.end annotation


# instance fields
.field private final fields:Lcom/ebay/app/AlertDialogFragment$Fields;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/ebay/app/AlertDialogFragment$Fields;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/app/AlertDialogFragment$Fields;-><init>(Lcom/ebay/app/AlertDialogFragment$1;)V

    iput-object v0, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$0(Lcom/ebay/app/AlertDialogFragment;Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {p1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$700(Lcom/ebay/app/AlertDialogFragment$Fields;)[Z

    move-result-object p1

    aput-boolean p3, p1, p2

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$1(Lcom/ebay/app/AlertDialogFragment;ILandroid/content/DialogInterface;I)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 212
    instance-of v1, v0, Lcom/ebay/app/DialogFragmentCallback;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Lcom/ebay/app/DialogFragmentCallback;

    .line 214
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getTargetRequestCode()I

    move-result p1

    .line 213
    invoke-interface {v0, p0, p1, p3}, Lcom/ebay/app/DialogFragmentCallback;->onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/ebay/app/DialogFragmentCallback;

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ebay/app/DialogFragmentCallback;

    invoke-interface {v0, p0, p1, p3}, Lcom/ebay/app/DialogFragmentCallback;->onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V

    .line 219
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$setDialogListener$2(Lcom/ebay/app/AlertDialogFragment;IILandroid/content/DialogInterface;I)V
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p4

    .line 231
    instance-of v0, p4, Lcom/ebay/app/DialogFragmentCallback;

    if-eqz v0, :cond_0

    .line 232
    check-cast p4, Lcom/ebay/app/DialogFragmentCallback;

    .line 233
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getTargetRequestCode()I

    move-result p2

    .line 232
    invoke-interface {p4, p0, p2, p1}, Lcom/ebay/app/DialogFragmentCallback;->onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    instance-of p4, p4, Lcom/ebay/app/DialogFragmentCallback;

    if-eqz p4, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    check-cast p4, Lcom/ebay/app/DialogFragmentCallback;

    invoke-interface {p4, p0, p2, p1}, Lcom/ebay/app/DialogFragmentCallback;->onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V

    .line 238
    :cond_1
    :goto_0
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public getCheckedItems()[Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$700(Lcom/ebay/app/AlertDialogFragment$Fields;)[Z

    move-result-object v0

    return-object v0
.end method

.method getRetainState(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    const-string/jumbo v0, "retainInstance"

    .line 250
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/ebay/app/DialogFragmentCallback;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/ebay/app/DialogFragmentCallback;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getTargetRequestCode()I

    move-result v1

    invoke-interface {p1, p0, v1, v0}, Lcom/ebay/app/DialogFragmentCallback;->onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/ebay/app/DialogFragmentCallback;

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ebay/app/DialogFragmentCallback;

    .line 114
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getTargetRequestCode()I

    move-result v1

    .line 113
    invoke-interface {p1, p0, v1, v0}, Lcom/ebay/app/DialogFragmentCallback;->onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ebay/app/AlertDialogFragment;->getRetainState(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;)Z

    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/ebay/app/AlertDialogFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 121
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$202(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 122
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$302(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 123
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "positiveButtonText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$402(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 124
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "negativeButtonText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$502(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 125
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "messageAsWebview"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$102(Lcom/ebay/app/AlertDialogFragment$Fields;Z)Z

    .line 126
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$602(Lcom/ebay/app/AlertDialogFragment$Fields;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 127
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checkedItems"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$702(Lcom/ebay/app/AlertDialogFragment$Fields;[Z)[Z

    .line 128
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "linksClickable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/ebay/app/AlertDialogFragment$Fields;->linksClickable:Z

    .line 131
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "requestCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 133
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$200(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "titleId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 137
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0, v0}, Lcom/ebay/app/AlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$202(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$300(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "messageId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "messageId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ebay/app/AlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$302(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$400(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "positiveButtonTextId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "positiveButtonTextId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ebay/app/AlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$402(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$500(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "negativeButtonTextId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "negativeButtonTextId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ebay/app/AlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$502(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 158
    :cond_3
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$200(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 161
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$100(Lcom/ebay/app/AlertDialogFragment$Fields;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$300(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 163
    new-instance v2, Lcom/ebay/android/widget/AplsTrackingWebView;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ebay/android/widget/AplsTrackingWebView;-><init>(Landroid/content/Context;)V

    const-string v4, "http://"

    .line 165
    iget-object v3, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v3}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$300(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "text/html"

    const-string/jumbo v7, "utf-8"

    const-string v8, "about:blank"

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v3, Lcom/ebay/app/AlertDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/ebay/app/AlertDialogFragment$1;-><init>(Lcom/ebay/app/AlertDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 186
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 188
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 195
    :cond_4
    iget-object v1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$300(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$400(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 198
    iget-object v1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$400(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/ebay/app/AlertDialogFragment;->setDialogListener(II)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 200
    :cond_5
    iget-object v1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$500(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 201
    iget-object v1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$500(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/ebay/app/AlertDialogFragment;->setDialogListener(II)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 203
    :cond_6
    iget-object v1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$700(Lcom/ebay/app/AlertDialogFragment$Fields;)[Z

    move-result-object v1

    if-eqz v1, :cond_7

    .line 204
    iget-object v1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$600(Lcom/ebay/app/AlertDialogFragment$Fields;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$700(Lcom/ebay/app/AlertDialogFragment$Fields;)[Z

    move-result-object v2

    new-instance v3, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$eBUhVnSe7zfeaYE18-VaZs7foeI;

    invoke-direct {v3, p0}, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$eBUhVnSe7zfeaYE18-VaZs7foeI;-><init>(Lcom/ebay/app/AlertDialogFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 207
    :cond_7
    iget-object v1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$700(Lcom/ebay/app/AlertDialogFragment$Fields;)[Z

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$600(Lcom/ebay/app/AlertDialogFragment$Fields;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 209
    iget-object v1, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$600(Lcom/ebay/app/AlertDialogFragment$Fields;)[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$YcrolRQT3JGtqKLwdxKUxEq4ppw;

    invoke-direct {v2, p0, p1}, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$YcrolRQT3JGtqKLwdxKUxEq4ppw;-><init>(Lcom/ebay/app/AlertDialogFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 223
    :cond_8
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 80
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    iget-boolean v0, v0, Lcom/ebay/app/AlertDialogFragment$Fields;->linksClickable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$100(Lcom/ebay/app/AlertDialogFragment$Fields;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 95
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 97
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 98
    invoke-virtual {p0}, Lcom/ebay/app/AlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 101
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method

.method public setDialogListener(II)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 228
    new-instance v0, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$_0Utr7YnrU44JJMyYLsTf0hvF88;

    invoke-direct {v0, p0, p1, p2}, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$_0Utr7YnrU44JJMyYLsTf0hvF88;-><init>(Lcom/ebay/app/AlertDialogFragment;II)V

    return-object v0
.end method
