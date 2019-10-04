.class public final Lc/c/a/n/x/a/d;
.super Ljava/lang/Object;
.source "TimePickerDialogFragment.kt"

# interfaces
.implements Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/x/a/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/x/a/c;


# direct methods
.method public constructor <init>(Lc/c/a/n/x/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/x/a/d;->a:Lc/c/a/n/x/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a$a;->c(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a$a;->a(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/x/a/d;->a:Lc/c/a/n/x/a/c;

    invoke-virtual {v0}, Lb/o/a/d;->La()V

    return-void
.end method

.method public onCommit()V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a$a;->b(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/x/a/d;->a:Lc/c/a/n/x/a/c;

    invoke-virtual {v0}, Lc/c/a/n/x/a/c;->Ta()Lc/c/a/n/x/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/c/a/n/x/a/d;->a:Lc/c/a/n/x/a/c;

    invoke-static {v1}, Lc/c/a/n/x/a/c;->a(Lc/c/a/n/x/a/c;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getHour()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lc/c/a/n/x/a/d;->a:Lc/c/a/n/x/a/c;

    invoke-static {v2}, Lc/c/a/n/x/a/c;->b(Lc/c/a/n/x/a/c;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "getMinute()"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lc/c/a/n/x/a/c$b;->a(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/c/a/n/x/a/d;->a:Lc/c/a/n/x/a/c;

    invoke-virtual {v0}, Lb/o/a/d;->La()V

    return-void
.end method
