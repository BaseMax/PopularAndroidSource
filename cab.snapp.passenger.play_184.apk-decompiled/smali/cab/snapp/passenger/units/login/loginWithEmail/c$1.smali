.class final Lcab/snapp/passenger/units/login/loginWithEmail/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/login/loginWithEmail/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/login/loginWithEmail/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/login/loginWithEmail/c;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c$1;->a:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 40
    iget-object p2, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c$1;->a:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcab/snapp/passenger/units/login/loginWithEmail/c;->a:Ljava/lang/String;

    return-void
.end method
