.class final Lcab/snapp/d/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/d/b/a;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/d/b/a;


# direct methods
.method constructor <init>(Lcab/snapp/d/b/a;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcab/snapp/d/b/a$2;->a:Lcab/snapp/d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcab/snapp/d/b/a$2;->a:Lcab/snapp/d/b/a;

    .line 1034
    iget-object v0, v0, Lcab/snapp/d/b/a;->a:Ljava/lang/String;

    const-string v1, "POLING"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "run: Call Polling Network. ->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/d/b/a$2;->a:Lcab/snapp/d/b/a;

    iget-boolean v1, v1, Lcab/snapp/d/b/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    iget-object v0, p0, Lcab/snapp/d/b/a$2;->a:Lcab/snapp/d/b/a;

    invoke-virtual {v0}, Lcab/snapp/d/b/a;->b()V

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcab/snapp/d/b/a$2;->a:Lcab/snapp/d/b/a;

    .line 2034
    iget-object v0, v0, Lcab/snapp/d/b/a;->a:Ljava/lang/String;

    const-string v1, "POLUNG_SIDE_REQUEST"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "run: Call Polling Side  request Network. ->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/d/b/a$2;->a:Lcab/snapp/d/b/a;

    iget-boolean v1, v1, Lcab/snapp/d/b/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    iget-object v0, p0, Lcab/snapp/d/b/a$2;->a:Lcab/snapp/d/b/a;

    invoke-virtual {v0}, Lcab/snapp/d/b/a;->a()V

    :cond_1
    return-void
.end method
