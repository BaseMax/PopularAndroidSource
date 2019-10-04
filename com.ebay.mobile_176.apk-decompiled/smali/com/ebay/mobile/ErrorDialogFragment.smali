.class public Lcom/ebay/mobile/ErrorDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ErrorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;,
        Lcom/ebay/mobile/ErrorDialogFragment$Listener;,
        Lcom/ebay/mobile/ErrorDialogFragment$OnDismissMessageListener;
    }
.end annotation


# static fields
.field public static final EXTRA_ALLOW_RETRY:Ljava/lang/String; = "allowRetry"

.field public static final EXTRA_AS_MESSAGE_BAR:Ljava/lang/String; = "asMessageBar"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_IS_ERROR:Ljava/lang/String; = "isError"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"


# instance fields
.field floaterView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private createFloaterBar(Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 107
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "message"

    .line 114
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "isError"

    .line 115
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "allowRetry"

    .line 116
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const v4, 0x7f0d0174

    .line 119
    invoke-virtual {p2, v4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a09ef

    .line 120
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v4, 0x7f0a09f0

    .line 121
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a09f1

    .line 122
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 123
    iput-object p3, p0, Lcom/ebay/mobile/ErrorDialogFragment;->floaterView:Landroid/view/View;

    .line 126
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0602

    .line 129
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 130
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 131
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 133
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_1
    instance-of p3, p2, Lcom/ebay/android/widget/MessageBar;

    if-eqz p3, :cond_2

    .line 136
    move-object p3, p2

    check-cast p3, Lcom/ebay/android/widget/MessageBar;

    invoke-virtual {p3, v3}, Lcom/ebay/android/widget/MessageBar;->setError(Z)V

    :cond_2
    const/16 p3, 0x8

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 138
    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    .line 139
    :goto_3
    invoke-virtual {v4, p3}, Landroid/view/View;->setVisibility(I)V

    if-nez p4, :cond_5

    const/4 p3, 0x1

    .line 142
    invoke-virtual {p1, p3}, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->startAnimation(Z)Z

    :cond_5
    return-object p2
.end method

.method private createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 57
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v2, "message"

    .line 64
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "errorCode"

    .line 65
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    invoke-direct {p0, v2}, Lcom/ebay/mobile/ErrorDialogFragment;->isHtml(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    move-object v0, v2

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const v4, 0x7f0d0175

    goto :goto_1

    :cond_1
    const v4, 0x7f0d0173

    .line 69
    :goto_1
    invoke-virtual {p1, v4, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz v3, :cond_2

    const p2, 0x7f0a0603

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    .line 75
    check-cast v2, Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p2, v2, v1, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const p2, 0x7f0a0602

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 81
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 82
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 84
    :cond_3
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-nez v0, :cond_4

    const p2, 0x7f0a05fd

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    const p2, 0x7f0a05f2

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-object p1
.end method

.method private isHtml(Ljava/lang/Object;)Z
    .locals 1

    .line 52
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method final dismissMessage(Z)V
    .locals 4

    .line 268
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v2, "id"

    .line 269
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 274
    instance-of v3, v2, Lcom/ebay/mobile/ErrorDialogFragment$OnDismissMessageListener;

    if-eqz v3, :cond_1

    .line 275
    check-cast v2, Lcom/ebay/mobile/ErrorDialogFragment$OnDismissMessageListener;

    invoke-interface {v2, v1, p1}, Lcom/ebay/mobile/ErrorDialogFragment$OnDismissMessageListener;->onDismissMessage(IZ)V

    goto :goto_0

    .line 276
    :cond_1
    instance-of v2, v0, Lcom/ebay/mobile/ErrorDialogFragment$OnDismissMessageListener;

    if-eqz v2, :cond_2

    .line 277
    check-cast v0, Lcom/ebay/mobile/ErrorDialogFragment$OnDismissMessageListener;

    invoke-interface {v0, v1, p1}, Lcom/ebay/mobile/ErrorDialogFragment$OnDismissMessageListener;->onDismissMessage(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 262
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 263
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ErrorDialogFragment;->dismissMessage(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-string/jumbo v2, "title"

    .line 162
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "message"

    .line 163
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "errorCode"

    .line 164
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "isError"

    .line 165
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "allowRetry"

    .line 166
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "asMessageBar"

    .line 167
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 168
    invoke-direct {p0, v3}, Lcom/ebay/mobile/ErrorDialogFragment;->isHtml(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v2, :cond_1

    .line 170
    instance-of v8, v2, Ljava/lang/Integer;

    if-nez v8, :cond_1

    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXTRA_TITLE is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 172
    instance-of v8, v3, Ljava/lang/Integer;

    if-nez v8, :cond_3

    instance-of v8, v3, Ljava/lang/String;

    if-eqz v8, :cond_2

    goto :goto_1

    .line 173
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXTRA_MESSAGE is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz v4, :cond_6

    .line 174
    instance-of v8, v4, Ljava/lang/Integer;

    if-nez v8, :cond_6

    instance-of v8, v4, Ljava/lang/String;

    if-eqz v8, :cond_4

    goto :goto_2

    .line 175
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXTRA_ERROR_CODE is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    const/4 p1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 180
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    const/4 v8, 0x1

    if-eqz v7, :cond_b

    .line 183
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 184
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f040252

    invoke-virtual {v3, v4, p1, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 185
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getTheme()I

    move-result v3

    iput v3, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_7
    if-nez v2, :cond_8

    const/4 v0, 0x1

    .line 186
    :cond_8
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/ErrorDialogFragment;->setStyle(II)V

    .line 188
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getTheme()I

    move-result v3

    invoke-direct {p1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz v2, :cond_a

    .line 191
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 192
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_3

    .line 194
    :cond_9
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 196
    :cond_a
    :goto_3
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/ErrorDialogFragment;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto/16 :goto_5

    :cond_b
    if-eqz p1, :cond_d

    .line 200
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f04032c

    invoke-virtual {v0, v1, p1, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 202
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getTheme()I

    move-result v0

    iput v0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 203
    :cond_c
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v8, p1}, Lcom/ebay/mobile/ErrorDialogFragment;->setStyle(II)V

    .line 205
    new-instance p1, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;

    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;-><init>(Lcom/ebay/mobile/ErrorDialogFragment;Landroid/content/Context;I)V

    .line 206
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x37

    .line 208
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object p1

    .line 214
    :cond_d
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getTheme()I

    move-result v7

    invoke-direct {p1, v0, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-nez v2, :cond_e

    const v0, 0x7f120209

    .line 216
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_4

    .line 217
    :cond_e
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 218
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_4

    .line 220
    :cond_f
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_4
    if-eqz v5, :cond_10

    const v0, 0x1010355

    .line 222
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_10
    if-nez v4, :cond_12

    .line 226
    instance-of v0, v3, Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 227
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_5

    .line 229
    :cond_11
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_5

    .line 232
    :cond_12
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/ErrorDialogFragment;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 234
    :goto_5
    new-instance v0, Lcom/ebay/mobile/ErrorDialogFragment$Listener;

    invoke-direct {v0, p0, v1}, Lcom/ebay/mobile/ErrorDialogFragment$Listener;-><init>(Lcom/ebay/mobile/ErrorDialogFragment;Lcom/ebay/mobile/ErrorDialogFragment$1;)V

    const v1, 0x104000a

    .line 235
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz v6, :cond_13

    const v1, 0x7f120b7a

    .line 237
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 238
    :cond_13
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 244
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 245
    instance-of v1, v0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;

    if-eqz v1, :cond_0

    .line 246
    check-cast v0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ebay/mobile/ErrorDialogFragment;->createFloaterBar(Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ErrorDialogFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 249
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/ErrorDialogFragment;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/ebay/mobile/ErrorDialogFragment;->floaterView:Landroid/view/View;

    .line 256
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method
