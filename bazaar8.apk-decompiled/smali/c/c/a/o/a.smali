.class public final Lc/c/a/o/a;
.super Ljava/lang/Object;
.source "AutosizingTextView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/widget/AutosizingTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/widget/AutosizingTextView;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/widget/AutosizingTextView;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/o/a;->a:Lcom/farsitel/bazaar/widget/AutosizingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/o/a;->a:Lcom/farsitel/bazaar/widget/AutosizingTextView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/AutosizingTextView;->a(Lcom/farsitel/bazaar/widget/AutosizingTextView;)V

    return-void
.end method
