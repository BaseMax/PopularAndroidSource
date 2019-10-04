.class public Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;
.super Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;
.source "OpenInlineAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/g/d/a/j;

    invoke-direct {v0}, Lf/a/a/g/d/a/j;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;-><init>(Ljava/lang/String;ZZ)V

    .line 3
    iput-object p4, p0, Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;->d:Ljava/lang/String;

    const-string p2, "/"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :cond_0
    const/4 p3, 0x0

    .line 6
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;->e:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;ILandroid/content/Intent;Landroid/os/Parcelable;)V
    .locals 1

    const/4 p4, -0x1

    if-ne p2, p4, :cond_1

    const-string p2, "exit_token"

    .line 10
    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 11
    :goto_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "token"

    .line 12
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p2, Lf/a/a/c/b/b;

    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object p4

    iget-object v0, p0, Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;->d:Ljava/lang/String;

    invoke-direct {p2, p4, v0, p3}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p3, Lf/a/a/g/d/g;

    iget-object p4, p0, Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;->d:Ljava/lang/String;

    invoke-direct {p3, p1, p4}, Lf/a/a/g/d/g;-><init>(Lf/a/a/e/g;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V

    :cond_1
    return-void
.end method

.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;Landroid/view/View;)V

    .line 2
    iget-object p2, p0, Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;->e:Ljava/lang/String;

    iget-object v0, p0, Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;->f:Ljava/lang/String;

    invoke-static {p2, v0}, Lir/cafebazaar/inline/ui/InlineActivity;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;)Ljava/util/Map;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "params"

    .line 8
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Lb/o/a/i;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
