.class public Lir/cafebazaar/inline/ux/list/InlineListAdapter$1;
.super Ljava/util/ArrayList;
.source "InlineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/e/b;->a(Lf/a/a/e/b/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lf/a/a/e/b/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lf/a/a/g/e/b;

.field public final synthetic val$elementInflater:Lf/a/a/e/b/n;


# direct methods
.method public constructor <init>(Lf/a/a/g/e/b;Lf/a/a/e/b/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ux/list/InlineListAdapter$1;->this$0:Lf/a/a/g/e/b;

    iput-object p2, p0, Lir/cafebazaar/inline/ux/list/InlineListAdapter$1;->val$elementInflater:Lf/a/a/e/b/n;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p1, p0, Lir/cafebazaar/inline/ux/list/InlineListAdapter$1;->val$elementInflater:Lf/a/a/e/b/n;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
