.class final Lcom/a/a/c/i$e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/c/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/i$e;->canSendReports()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/i$e;


# direct methods
.method constructor <init>(Lcom/a/a/c/i$e;)V
    .locals 0

    .line 1452
    iput-object p1, p0, Lcom/a/a/c/i$e$1;->a:Lcom/a/a/c/i$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendUserReportsWithoutPrompting(Z)V
    .locals 3

    .line 1455
    iget-object v0, p0, Lcom/a/a/c/i$e$1;->a:Lcom/a/a/c/i$e;

    .line 2430
    iget-object v0, v0, Lcom/a/a/c/i$e;->a:Lcom/a/a/c/ac;

    .line 3046
    iget-object v1, v0, Lcom/a/a/c/ac;->a:Lio/fabric/sdk/android/services/c/c;

    iget-object v0, v0, Lcom/a/a/c/ac;->a:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/fabric/sdk/android/services/c/c;->save(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method
