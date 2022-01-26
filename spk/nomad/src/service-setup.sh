
# Package specific behaviors
# Sourced script by generic installer and start-stop-status scripts
SERVICE_CONFIG_DIR="${SYNOPKG_PKGVAR}/nomad.d"
SERVICE_COMMAND="${SYNOPKG_PKGDEST}/bin/nomad agent -config ${SERVICE_CONFIG_DIR}"
SVC_CWD="${SYNOPKG_PKGVAR}"
SVC_BACKGROUND=y
SVC_WRITE_PID=y


# These functions are for demonstration purpose of DSM sequence call
# and installation logging capabilities.
# Only provide useful ones for your own package, logging may be removed.


validate_preinst ()
{
    # use install_log to write to installer log file.
    install_log "validate_preinst ${SYNOPKG_PKG_STATUS}"

    # writing to stdout in dsm7 shows "installation error" without exit 1 (this looks like an error of DSM7 beta)
    #echo "preinst validation notification"

    # to abort the installer use "exit 1"
}

validate_preuninst ()
{
    # use install_log to write to installer log file.
    install_log "validate_preuninst ${SYNOPKG_PKG_STATUS}"

    # writing to stdout in dsm7 shows "installation error" without exit 1 (this looks like an error of DSM7 beta)
    #echo "preuninst validation notification"

    # to abort the installer use "exit 1"
}

validate_preupgrade ()
{
    # use install_log to write to installer log file.
    install_log "validate_preupgrade ${SYNOPKG_PKG_STATUS}"

    # writing to stdout in dsm7 shows "installation error" without exit 1 (this looks like an error of DSM7 beta)
    #echo "preupgrade validation notification"

    # to abort the installer use "exit 1"
}

service_preinst ()
{
    echo "service_preinst ${SYNOPKG_PKG_STATUS}"

    echo "SERVICE_COMMAND:      ${SERVICE_COMMAND}"
    echo "SYNOPKG_PKGVAR:       ${SYNOPKG_PKGVAR}"
}

service_postinst ()
{
    echo "service_postinst ${SYNOPKG_PKG_STATUS}"

    ln -sf ${INST_LOG} ${SYNOPKG_PKGVAR}/installer.log
    mkdir -v -p "${SERVICE_CONFIG_DIR}"
}

service_preuninst ()
{
    echo "service_preuninst ${SYNOPKG_PKG_STATUS}"
}

service_postuninst ()
{
    echo "service_postuninst ${SYNOPKG_PKG_STATUS}"
}

service_preupgrade ()
{
    echo "service_preupgrade ${SYNOPKG_PKG_STATUS}"
}

service_postupgrade ()
{
    echo "service_postupgrade ${SYNOPKG_PKG_STATUS}"
}

service_prestart ()
{
    echo "Before service start"
    mkdir -v -p "${SERVICE_CONFIG_DIR}"
    env | sort
}

service_poststop ()
{
    echo "After service stop"
}
