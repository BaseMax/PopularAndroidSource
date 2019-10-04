.class public final Lc/c/a/n/u/b/d;
.super Ljava/lang/Object;
.source "PostCommentFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/u/b/a;->mb()Lc/c/a/n/u/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/u/b/a;


# direct methods
.method public constructor <init>(Lc/c/a/n/u/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/u/b/d;->a:Lc/c/a/n/u/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lc/c/a/n/u/b/d;->a:Lc/c/a/n/u/b/a;

    invoke-virtual {p2}, Lc/c/a/n/u/b/a;->gb()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lc/c/a/n/u/b/a;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
