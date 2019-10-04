.class final Lcom/google/firebase/iid/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/firebase/iid/f;

.field private synthetic b:Lcom/google/firebase/iid/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/h;Lcom/google/firebase/iid/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/i;->b:Lcom/google/firebase/iid/h;

    iput-object p2, p0, Lcom/google/firebase/iid/i;->a:Lcom/google/firebase/iid/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/i;->b:Lcom/google/firebase/iid/h;

    invoke-static {v0}, Lcom/google/firebase/iid/h;->a(Lcom/google/firebase/iid/h;)Lcom/google/firebase/iid/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/i;->a:Lcom/google/firebase/iid/f;

    iget-object v1, v1, Lcom/google/firebase/iid/f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/d;->handleIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/firebase/iid/i;->a:Lcom/google/firebase/iid/f;

    invoke-virtual {v0}, Lcom/google/firebase/iid/f;->a()V

    return-void
.end method
