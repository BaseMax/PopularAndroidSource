.class final Lcab/snapp/passenger/units/splash/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/splash/c;->showInputDialogForQAEndpoints(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcab/snapp/passenger/units/splash/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/splash/c;[Ljava/lang/String;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/c$2;->b:Lcab/snapp/passenger/units/splash/c;

    iput-object p2, p0, Lcab/snapp/passenger/units/splash/c$2;->a:[Ljava/lang/String;

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

    .line 482
    iget-object p2, p0, Lcab/snapp/passenger/units/splash/c$2;->a:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, p2, p3

    return-void
.end method
