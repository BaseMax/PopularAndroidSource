.class public final Lc/c/a/n/i/a/b;
.super Ljava/lang/Object;
.source "ReleaseNoteDialog.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/i/a/b;->a:Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc/c/a/n/i/a/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/n/i/a/b;->a:Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->a(Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;Ljava/util/List;)V

    return-void
.end method